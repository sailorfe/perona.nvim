for k, _ in pairs(package.loaded) do
  if k:match("perona") then
    package.loaded[k] = nil
  end
end

require("perona").negativehollow()
