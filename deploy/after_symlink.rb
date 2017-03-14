run! "cd #{config.latest_release} && MIX_ENV=prod mix deps.get"
run! "cd #{config.latest_release} && MIX_ENV=prod mix release"
run! "rsync -avHl #{config.latest_release}/rel/ #{config.shared_path}/rel/"

sudo "monit restart phoenix_#{config.app}"
