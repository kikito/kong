local function method_not_allowed(self, db, helpers)
  return helpers.responses.send_HTTP_METHOD_NOT_ALLOWED()
end

return {
  -- GET / PATCH / DELETE /server_names/server_name are the only methods allowed

  ["/server_names"] = {
    before = method_not_allowed,
  },

  ["/server_names/:server_names/certificate"] = {
    before = method_not_allowed,
  },

}
