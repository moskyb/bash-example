require "json"

instance_sizes = %w(small medium large xlarge)
oses = %w(linux macos)
archs = %w(amd64 arm64)

steps = 150.times.map do
  {
    command: "sleep 60",
    agents: {
      instance_size: instance_sizes.sample,
      os: oses.sample,
      arch: archs.sample,
    },
  }
end

puts JSON.dump({steps: steps})
