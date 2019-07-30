DiscordWebhookSystemInfos = 'https://discordapp.com/api/webhooks/483366815246843905/hwwir9Vd7Xl0Jpnyjh8j7Bfh_LlQnQV0eClevpL9pxr8NNEXFFINw85Or0oFsxCnFlDj'
DiscordWebhookKillinglogs = 'https://discordapp.com/api/webhooks/483366815246843905/hwwir9Vd7Xl0Jpnyjh8j7Bfh_LlQnQV0eClevpL9pxr8NNEXFFINw85Or0oFsxCnFlDj'
DiscordWebhookChat = 'https://discordapp.com/api/webhooks/483366815246843905/hwwir9Vd7Xl0Jpnyjh8j7Bfh_LlQnQV0eClevpL9pxr8NNEXFFINw85Or0oFsxCnFlDj'

SystemAvatar = 'https://wiki.fivem.net/w/images/d/db/FiveM-Wiki.png'

UserAvatar = 'https://i.imgur.com/9kX4Get.png'

SystemName = '[BRASIL] Morro Do Juramento'


-- [[Formatos de Comandos Especiais]
--* YOUR_TEXT * -> Fazer texto em itálico em discórdia
--** YOUR_TEXT ** -> Tornar o texto em negrito na discórdia
--*** YOUR_TEXT *** -> Fazer texto em itálico e negrito em discórdia
--__YOUR_TEXT__ -> sublinhado texto em discórdia
--__ * YOUR_TEXT * __ -> Sublinha o texto e torna itálico em discórdia
--__ ** YOUR_TEXT ** __ -> Sublinha o texto e torna-o Bold in Discord
--__ *** YOUR_TEXT *** __ -> Sublinha o texto e torna Italics & Bold in Discord
--~~ YOUR_TEXT ~~ -> Texto Tachado em Discórdia
--]]
-- Use 'USERNAME_NEEDED_HERE' sem as aspas, se você precisar de um nome de usuário em um comando especial
-- Use 'USERID_NEEDED_HERE' sem as aspas, se você precisar de um ID de usuários em um comando especial


-- Estes comandos especiais serão impressos diferentemente em discórdia, dependendo do que você definiu para

SpecialCommands = {
				   {'', '**[FORA RP]:**'},
				   {'/190', '**[190]: (CALLER ID: [ USERNAME_NEEDED_HERE | USERID_NEEDED_HERE ])**'},
				  }

						
-- These blacklisted commands will not be printed in discord
BlacklistedCommands = {
					   '/fix',
					   '/revive',
					  }

-- These Commands will use their own webhook
OwnWebhookCommands = {
					  {'', 'https://discordapp.com/api/webhooks/483366815246843905/hwwir9Vd7Xl0Jpnyjh8j7Bfh_LlQnQV0eClevpL9pxr8NNEXFFINw85Or0oFsxCnFlDj'},
					  {'/190', 'https://discordapp.com/api/webhooks/483366815246843905/hwwir9Vd7Xl0Jpnyjh8j7Bfh_LlQnQV0eClevpL9pxr8NNEXFFINw85Or0oFsxCnFlDj'},
					  {'/192', 'https://discordapp.com/api/webhooks/483366815246843905/hwwir9Vd7Xl0Jpnyjh8j7Bfh_LlQnQV0eClevpL9pxr8NNEXFFINw85Or0oFsxCnFlDj'},
					  {'/twitter', 'https://discordapp.com/api/webhooks/483366815246843905/hwwir9Vd7Xl0Jpnyjh8j7Bfh_LlQnQV0eClevpL9pxr8NNEXFFINw85Or0oFsxCnFlDj'},
					  {'/olx', 'https://discordapp.com/api/webhooks/483366815246843905/hwwir9Vd7Xl0Jpnyjh8j7Bfh_LlQnQV0eClevpL9pxr8NNEXFFINw85Or0oFsxCnFlDj'},
					  {'/ilegal', 'https://discordapp.com/api/webhooks/483366815246843905/hwwir9Vd7Xl0Jpnyjh8j7Bfh_LlQnQV0eClevpL9pxr8NNEXFFINw85Or0oFsxCnFlDj'},


					 }

