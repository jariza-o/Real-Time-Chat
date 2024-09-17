# **************************************************************************** #
#                                                                              #
#                                                         					   #
#    Makefile                                           				       #
#                                                     					       #
#    By: jariza-o <juanarizaordonez@gmail.com>    					           #
#                                                 				               #
#    Created: 2024/09/17 17:52:35 by jariza-o          			               #
#    Updated: 2024/09/17 17:52:36 by jariza-o         				           #
#                                                                              #
# **************************************************************************** #

all:
	@docker compose up -d
down:
	@docker compose down

.PHONY: all down