package cli

import "github.com/c-bata/go-prompt"

var (
	commandSuggestions = []prompt.Suggest{
		{
			Text:        "send_message",
			Description: "Send messages",
		},
		{
			Text:        "topic",
			Description: "Manage topics",
		},
		{
			Text:        "help",
			Description: "Show available commands",
		},
		{
			Text:        "peers",
			Description: "Show connected peers with PubSub",
		},
		{
			Text:        "exit",
			Description: "Exit the repl",
		},
		{
			Text:        "id",
			Description: "Print current node ID",
		},
		{
			Text:        "subscriptions",
			Description: "View active subscription",
		},
		{
			Text:        "listen",
			Description: "Listen to incoming messagesw",
		},
	}

	topicSuggestions = []prompt.Suggest{
		{
			Text:        "subscribe",
			Description: "Subscribe to a topic",
		},
		{
			Text:        "unsubscribe",
			Description: "Unsubscribe from a topic",
		},
	}
)