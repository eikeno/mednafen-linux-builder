all:
	docker build -t mednafen_builder .
	mkdir -p ./mednafen-1.32.1
	docker run -d -v ./mednafen-1.32.1:/export  mednafen_builder /build_script.sh
