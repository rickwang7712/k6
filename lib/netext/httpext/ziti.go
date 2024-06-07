package httpext

import (
	"context"
	"fmt"
	"net"
	"net/http"
	"os"
	"strings"
	"time"

	"github.com/openziti/sdk-golang/ziti"
)

type ZitiDialContext struct {
	context ziti.Context
}

func (dc *ZitiDialContext) Dial(_ context.Context, _ string, addr string) (net.Conn, error) {
	service := strings.Split(addr, ":")[0] // will always get passed host:port
	return dc.context.Dial(service)
}

// GetZitiTransport returns a http.Transport that uses Ziti to dial
func GetZitiTransport(originTransport *http.Transport) *http.Transport {
	filePath := os.Getenv("ZITI_IDENTITY_FILE") //nolint: forbidigo //for dev
	if filePath == "" {
		panic("ZITI_IDENTITY_FILE should be set")
	}

	cfg, err := ziti.NewConfigFromFile(filePath)
	if err != nil {
		panic(fmt.Sprintf("err reading ziti identity file: %v", err))
	}
	ctx, err := ziti.NewContext(cfg)
	if err != nil {
		panic(fmt.Sprintf("err creating ziti context: %v", err))
	}

	impl, ok := ctx.(*ziti.ContextImpl)
	if !ok {
		panic("failed to get *ziti.ContextImpl from ziti.Context")
	}
	impl.CtrlClt.HttpClient.Timeout = 30 * time.Second

	zitiDialContext := ZitiDialContext{context: ctx}
	zitiTransport := originTransport.Clone() // copy default transport
	zitiTransport.DialContext = zitiDialContext.Dial

	return zitiTransport
}
