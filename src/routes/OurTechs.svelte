<script>
	import SmallBox from "../components/SmallBox.svelte";
	import GoButton from "../components/GoButton.svelte";
</script>

<section id="OurTechs" class="client_section layout_padding my-4">
	<div class="container">
		<div class="heading_container pb-5">
			<h2 class="section-title">Our Technologies</h2>
		</div>
		<div class="row">
			<SmallBox title="Svelte" site="svelte.dev">
				Svelte is programming language for building frontends use-case, productive version of the popular one: React, Vue, or Angular.
			</SmallBox>
			<SmallBox title="Clickhouse" site="clickhouse.com">
				Clickhouse is one of the fastest OLAP database in the world, it could achieve 1 million inserts per second, and sub-second complex queries.
			</SmallBox>
			<SmallBox title="Tarantool" site="tarantool.io">
				Tarantool is one of the fastest in-memory OLTP database that support SQL, it could achieve 200K TPS on single core.
			</SmallBox>
			<SmallBox title="Jelastic" site="jelastic.cloud">
				Jelastic is super flexible PaaS: platform as a service and IaaS: infrastructure as a service provider.
			</SmallBox>
			<SmallBox title="Centrifugo" site="centrifugal.dev">
				Centrifugo is one of the simples pub-sub realtime messaging server, useful for notification fan-out.
			</SmallBox>
			<SmallBox title="ScyllaDB" site="scylladb.com">
				ScyllaDB is the database for data-intensive apps that require high performance and low latency.
			</SmallBox>
			<SmallBox title="Materialize IO" site="materialize.com">
				Materialize is one of the fastest streaming database for realtime analytics use-case.
			</SmallBox>
			<SmallBox title="Aerospike" site="aerospike.com">
				Aerospike is a flash memory and in-memory open source distributed key-value NoSQL 
			</SmallBox>
			<SmallBox title="Golang" site="go.dev">
				Golang is one of the most productive programming language for backend use-case.
			</SmallBox>
			<SmallBox title="RedPanda" site="redpanda.com">
				RedPanda is one of the fastest PubSub/message-queue that are Kafka-compatible.
			</SmallBox>
			<SmallBox title="TypeSense" site="typesense.org">
				TypeSense is typo-tolerant search engine, comparable to ElasticSearch.
			</SmallBox>
			<SmallBox title="TiDB" site="en.pingcap.com">
				TiDB is one of the auto-healing database that compatible with MySQL.
			</SmallBox>
			<SmallBox title="Godot" site="unity3d.com">
				Godot is rising popularity game engine that uses GDScript.
			</SmallBox>
			<SmallBox title="MinIO" site="min.io">
				MinIO is high-performance, S3 compatible object storage.
			</SmallBox>
			<SmallBox title="MailU" site="mailu.io">
				MailU is one of the fully-featured mail server.
			</SmallBox>
			<SmallBox title="SvelteNative" site="svelte-native.technology">
				New approach to building mobile application.
			</SmallBox>
			<SmallBox title="Cloudflare Pages" site="pages.cloudflare.com">
				Static site CDN and deployment platform.
			</SmallBox>
			<SmallBox title="Docker Compose" site="docs.docker.com/compose">
				Tool to run multi-docker applications.
			</SmallBox>
			<SmallBox title="Fabio LB" site="fabiolb.net">
				Stateless Automatic Load Balancer.
			</SmallBox>
			<SmallBox title="NATS" site="nats.io">
				Message-oriented middleware.
			</SmallBox>
			<SmallBox title="Multipass" site="multipass.run">
				Instant Ubuntu VM Launcher.
			</SmallBox>
			<SmallBox title="Consul" site="consul.io">
				Service discovery.
			</SmallBox>
		</div>
	</div>
	<GoButton target="#Home"> Back to Top</GoButton>
</section>

<style>
	.row {
		margin-top: 1.5em;
	}

</style>
