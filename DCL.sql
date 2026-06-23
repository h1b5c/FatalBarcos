-- 1. Criação das Roles (Papéis de Segurança)
CREATE ROLE role_admin;
CREATE ROLE role_func;

-- 2. Permissões para o Administrador (RF-001, RF-002, RF-004, RF-005, RF-006, RF-009, RF-010)
GRANT SELECT, INSERT, UPDATE, DELETE ON Dono TO role_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Cargo TO role_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Produto_Servico TO role_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Funcionario TO role_admin;
GRANT SELECT, INSERT, UPDATE, DELETE ON Barco TO role_admin;

GRANT EXECUTE ON REAJUSTA_SALARIOS TO role_admin;
GRANT EXECUTE ON REAJUSTA_CARGO TO role_admin;
GRANT EXECUTE ON TRANSFERE_DONO TO role_admin;
GRANT EXECUTE ON AUMENTA_ESTOQUE TO role_admin;
GRANT EXECUTE ON FN_COMISSAO_DONO TO role_admin;
GRANT EXECUTE ON FN_FATURAMENTO_MES TO role_admin;
GRANT EXECUTE ON FN_FATURAMENTO_ANO TO role_admin;
GRANT EXECUTE ON FN_FATURAMENTO_DIA TO role_admin;

-- 3. Permissões para o Funcionário (RF-003, RF-007, RF-008)
GRANT SELECT, INSERT, UPDATE, DELETE ON Cliente TO role_func;
GRANT SELECT, INSERT, UPDATE, DELETE ON Sessao TO role_func;
GRANT SELECT, INSERT, UPDATE, DELETE ON Sessao_Produto TO role_func;

-- Permissões de leitura necessárias para o funcionário consultar dados durante as operações
GRANT SELECT ON Barco TO role_func;
GRANT SELECT ON Produto_Servico TO role_func;

GRANT EXECUTE ON Fecha_Conta TO role_func;
GRANT EXECUTE ON MOSTRA_PRODUTOS TO role_func;
GRANT EXECUTE ON AVISO_REPOSICAO TO role_func;
GRANT EXECUTE ON CANCELA_SESSAO TO role_func;