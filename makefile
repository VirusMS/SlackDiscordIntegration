CC			= gcc
FLAGS		= -Wall -Wextra -Werror
LIBS		= -I includes
NAME		= sdi

RM			= rm -f

MAIN_C		= srcs/main.c

MAIN_TEST_C = srcs/main-test.c

SRCS		=

ifeq ($(filter %test%,$(MAKECMDGOALS)),test)
SRCS		+= $(MAIN_C)
else
SRCS		+= $(MAIN_TEST_C)
endif

OBJS 		= ${SRCS:.c=.o}

all:		${NAME}

test:		all

${NAME}:	${OBJS}
			${CC} ${CFLAGS} ${LIBS} -o ${NAME} ${OBJS}

clean:
			${RM} ${OBJS} $(MAIN_C:.c=.o) $(MAIN_TEST_C:.c=.o)

fclean:		clean
			${RM} ${NAME}

re::		fclean
re::		all

.PHONY:		all clean fclean re test

