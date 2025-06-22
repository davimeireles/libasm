# **************************************************************************** #
#                              libasm Makefile                                 #
# **************************************************************************** #

NAME            := libasm.a
BONUS_NAME      := libasm_bonus.a

SRC_DIR         := src
BONUS_DIR       := $(SRC_DIR)/bonus
OBJ_DIR         := obj
INC_DIR         := includes

NASM            := nasm
NASMFLAGS       := -f elf64
AR              := ar rcs

# ---------------------------------------------------------------------------- #
# Source files                                                                 #
# ---------------------------------------------------------------------------- #

CORE_SRC        := ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
BONUS_SRC       := ft_atoi_base_bonus.s ft_list_push_front_bonus.s ft_list_size_bonus.s ft_list_sort_bonus.s ft_list_remove_if_bonus.s

CORE_OBJS       := $(CORE_SRC:.s=.o)
BONUS_OBJS      := $(BONUS_SRC:.s=.o)

OBJ_CORE        := $(addprefix $(OBJ_DIR)/, $(CORE_OBJS))
OBJ_BONUS       := $(addprefix $(OBJ_DIR)/, $(BONUS_OBJS))

# ---------------------------------------------------------------------------- #
# Rules                                                                        #
# ---------------------------------------------------------------------------- #

.PHONY: all bonus clean fclean re

# Default: only core
all: $(NAME)

$(NAME): $(OBJ_DIR) $(OBJ_CORE)
	$(AR) $(NAME) $(OBJ_CORE)

# Bonus: core + bonus objects, archived into separate .a
bonus: $(BONUS_NAME)

$(BONUS_NAME): $(OBJ_DIR) $(OBJ_CORE) $(OBJ_BONUS)
	$(AR) $(BONUS_NAME) $(OBJ_CORE) $(OBJ_BONUS)

# Ensure obj/ exists
$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

# Compile core .s files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.s
	$(NASM) $(NASMFLAGS) -I $(INC_DIR) $< -o $@

# Compile bonus .s files
$(OBJ_DIR)/%.o: $(BONUS_DIR)/%.s
	$(NASM) $(NASMFLAGS) -I $(INC_DIR) $< -o $@

clean:
	@rm -rf $(OBJ_DIR)

fclean: clean
	@rm -f $(NAME) $(BONUS_NAME)

re: fclean all
