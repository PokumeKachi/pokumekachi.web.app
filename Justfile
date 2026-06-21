_default:
    @just --choose

build: develop
    bun run build

deploy: build
    firebase deploy

preview: develop
    bun run build
    bun run preview

run: develop
    bun run dev

todo:
    taskwarrior-tui --taskdata .task
