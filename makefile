CC			= gcc
FLAGS		= -Wall -Wextra -Werror
LIBS		= -I includes
NAME		= sdi

RM			= rm -f

SRCS		= \
			srcs/main.c

OBJS 		= ${SRCS:.c=.o}

all:		${NAME}

${NAME}:	${OBJS}
			${CC} ${CFLAGS} ${LIBS} -o ${NAME} ${OBJS}

clean:
			${RM} ${OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY:		all clean fclean re

