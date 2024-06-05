module go.k6.io/k6

go 1.21

toolchain go1.22.3

require (
	github.com/Azure/go-ntlmssp v0.0.0-20221128193559-754e69321358
	github.com/DataDog/datadog-go v0.0.0-20180330214955-e67964b4021a
	github.com/PuerkitoBio/goquery v1.9.1
	github.com/Soontao/goHttpDigestClient v0.0.0-20170320082612-6d28bb1415c5
	github.com/andybalholm/brotli v1.1.0
	github.com/dop251/goja v0.0.0-20240220182346-e401ed450204
	github.com/evanw/esbuild v0.21.2
	github.com/fatih/color v1.16.0
	github.com/go-sourcemap/sourcemap v2.1.4+incompatible
	github.com/golang/protobuf v1.5.4
	github.com/gorilla/websocket v1.5.1
	github.com/grafana/xk6-browser v1.5.1
	github.com/grafana/xk6-dashboard v0.7.3
	github.com/grafana/xk6-output-prometheus-remote v0.3.1
	github.com/grafana/xk6-redis v0.2.0
	github.com/grafana/xk6-webcrypto v0.3.0
	github.com/grafana/xk6-websockets v0.4.0
	github.com/grpc-ecosystem/go-grpc-middleware v1.4.0
	github.com/influxdata/influxdb1-client v0.0.0-20190402204710-8ff2fc3824fc
	github.com/jhump/protoreflect v1.15.6
	github.com/klauspost/compress v1.17.7
	github.com/mailru/easyjson v0.7.7
	github.com/mattn/go-colorable v0.1.13
	github.com/mattn/go-isatty v0.0.20
	github.com/mccutchen/go-httpbin v1.1.2-0.20190116014521-c5cb2f4802fa
	github.com/mstoykov/atlas v0.0.0-20220811071828-388f114305dd
	github.com/mstoykov/envconfig v1.5.0
	github.com/mstoykov/k6-taskqueue-lib v0.1.0
	github.com/nu7hatch/gouuid v0.0.0-20131221200532-179d4d0c4d8d
	github.com/openziti/sdk-golang v0.23.22
	github.com/serenize/snaker v0.0.0-20201027110005-a7ad2135616e
	github.com/sirupsen/logrus v1.9.3
	github.com/spf13/afero v1.6.0
	github.com/spf13/cobra v1.8.0
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.9.0
	github.com/tidwall/gjson v1.17.1
	go.opentelemetry.io/otel v1.24.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace v1.24.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracegrpc v1.24.0
	go.opentelemetry.io/otel/exporters/otlp/otlptrace/otlptracehttp v1.24.0
	go.opentelemetry.io/otel/sdk v1.24.0
	go.opentelemetry.io/otel/trace v1.24.0
	go.uber.org/goleak v1.3.0
	golang.org/x/crypto v0.23.0
	golang.org/x/crypto/x509roots/fallback v0.0.0-20240318092723-b91329d961d4
	golang.org/x/net v0.25.0
	golang.org/x/term v0.20.0
	golang.org/x/time v0.5.0
	google.golang.org/grpc v1.63.2
	google.golang.org/protobuf v1.34.1
	gopkg.in/guregu/null.v3 v3.3.0
	gopkg.in/yaml.v3 v3.0.1
)

require (
	buf.build/gen/go/gogo/protobuf/protocolbuffers/go v1.31.0-20210810001428-4df00b267f94.1 // indirect
	buf.build/gen/go/prometheus/prometheus/protocolbuffers/go v1.31.0-20230627135113-9a12bc2590d2.1 // indirect
	github.com/andybalholm/cascadia v1.3.2 // indirect
	github.com/asaskevich/govalidator v0.0.0-20230301143203-a9d515a09cc2 // indirect
	github.com/beorn7/perks v1.0.1 // indirect
	github.com/bufbuild/protocompile v0.8.0 // indirect
	github.com/cenkalti/backoff/v4 v4.3.0 // indirect
	github.com/cespare/xxhash/v2 v2.2.0 // indirect
	github.com/chromedp/cdproto v0.0.0-20221023212508-67ada9507fb2 // indirect
	github.com/chromedp/sysutil v1.0.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/dgryski/go-rendezvous v0.0.0-20200823014737-9f7001d12a5f // indirect
	github.com/dlclark/regexp2 v1.9.0 // indirect
	github.com/fsnotify/fsnotify v1.7.0 // indirect
	github.com/fullsailor/pkcs7 v0.0.0-20190404230743-d7302db945fa // indirect
	github.com/go-logr/logr v1.4.1 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/go-ole/go-ole v1.2.6 // indirect
	github.com/go-openapi/analysis v0.23.0 // indirect
	github.com/go-openapi/errors v0.22.0 // indirect
	github.com/go-openapi/jsonpointer v0.21.0 // indirect
	github.com/go-openapi/jsonreference v0.21.0 // indirect
	github.com/go-openapi/loads v0.22.0 // indirect
	github.com/go-openapi/runtime v0.28.0 // indirect
	github.com/go-openapi/spec v0.21.0 // indirect
	github.com/go-openapi/strfmt v0.23.0 // indirect
	github.com/go-openapi/swag v0.23.0 // indirect
	github.com/go-openapi/validate v0.24.0 // indirect
	github.com/go-resty/resty/v2 v2.13.1 // indirect
	github.com/golang-jwt/jwt/v5 v5.2.1 // indirect
	github.com/google/pprof v0.0.0-20230728192033-2ba5b33183c6 // indirect
	github.com/google/uuid v1.6.0 // indirect
	github.com/gorilla/mux v1.8.1 // indirect
	github.com/gorilla/schema v1.2.0 // indirect
	github.com/gorilla/securecookie v1.1.1 // indirect
	github.com/grpc-ecosystem/grpc-gateway/v2 v2.19.0 // indirect
	github.com/inconshreveable/mousetrap v1.1.0 // indirect
	github.com/josharian/intern v1.0.0 // indirect
	github.com/kataras/go-events v0.0.3 // indirect
	github.com/lufia/plan9stats v0.0.0-20211012122336-39d0f177ccd0 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.4 // indirect
	github.com/mgutz/ansi v0.0.0-20200706080929-d51e80ef957d // indirect
	github.com/michaelquigley/pfxlog v0.6.10 // indirect
	github.com/miekg/pkcs11 v1.1.1 // indirect
	github.com/mitchellh/go-ps v1.0.0 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/muhlemmer/gu v0.3.1 // indirect
	github.com/oklog/ulid v1.3.1 // indirect
	github.com/opentracing/opentracing-go v1.2.0 // indirect
	github.com/openziti/channel/v2 v2.0.130 // indirect
	github.com/openziti/edge-api v0.26.16 // indirect
	github.com/openziti/foundation/v2 v2.0.45 // indirect
	github.com/openziti/identity v1.0.77 // indirect
	github.com/openziti/metrics v1.2.54 // indirect
	github.com/openziti/secretstream v0.1.20 // indirect
	github.com/openziti/transport/v2 v2.0.133 // indirect
	github.com/orcaman/concurrent-map/v2 v2.0.1 // indirect
	github.com/parallaxsecond/parsec-client-go v0.0.0-20221025095442-f0a77d263cf9 // indirect
	github.com/pkg/browser v0.0.0-20210911075715-681adbf594b8 // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	github.com/power-devops/perfstat v0.0.0-20210106213030-5aafc221ea8c // indirect
	github.com/prometheus/client_golang v1.16.0 // indirect
	github.com/prometheus/client_model v0.4.0 // indirect
	github.com/prometheus/common v0.42.0 // indirect
	github.com/prometheus/procfs v0.10.1 // indirect
	github.com/r3labs/sse/v2 v2.10.0 // indirect
	github.com/rcrowley/go-metrics v0.0.0-20201227073835-cf1acfcdf475 // indirect
	github.com/redis/go-redis/v9 v9.0.5 // indirect
	github.com/shirou/gopsutil/v3 v3.24.4 // indirect
	github.com/shoenig/go-m1cpu v0.1.6 // indirect
	github.com/speps/go-hashids v2.0.0+incompatible // indirect
	github.com/tidwall/match v1.1.1 // indirect
	github.com/tidwall/pretty v1.2.1 // indirect
	github.com/tklauser/go-sysconf v0.3.12 // indirect
	github.com/tklauser/numcpus v0.6.1 // indirect
	github.com/yusufpapurcu/wmi v1.2.4 // indirect
	github.com/zitadel/oidc/v2 v2.12.0 // indirect
	go.mongodb.org/mongo-driver v1.15.0 // indirect
	go.mozilla.org/pkcs7 v0.0.0-20200128120323-432b2356ecb1 // indirect
	go.opentelemetry.io/otel/metric v1.24.0 // indirect
	go.opentelemetry.io/proto/otlp v1.1.0 // indirect
	golang.org/x/exp v0.0.0-20221031165847-c99f073a8326 // indirect
	golang.org/x/oauth2 v0.20.0 // indirect
	golang.org/x/sync v0.7.0 // indirect
	golang.org/x/sys v0.20.0 // indirect
	golang.org/x/text v0.15.0 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20240227224415-6ceb2ff114de // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20240227224415-6ceb2ff114de // indirect
	gopkg.in/cenkalti/backoff.v1 v1.1.0 // indirect
	gopkg.in/square/go-jose.v2 v2.6.0 // indirect
	nhooyr.io/websocket v1.8.11 // indirect
)
