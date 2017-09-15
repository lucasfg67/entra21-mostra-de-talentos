unit UMensagens;

interface

resourcestring
  //Geral
  STR_ATENCAO                 = 'Atenção';
  STR_CAPTION_ABA_CONSULTAS   = '%d - %s...';
  STR_TODOS                   = 'Todos';
  STR_ATUALIZADO              = 'atualizado(a)';
  STR_GRAVADO                 = 'gravado(a)';
  STR_EXCLUIDO                = 'excluido(a)';
  STR_OPERACAO_COM_SUCESSO    = '%s com código %d %s com sucesso.';
  STR_ENTIDADE_NAO_ENCONTRADA = '%s com código %d não foi encontrado(a)';

  //Entidade
  STR_ENTIDADE_GRAVADA_COM_SUCESSO    = '%s gravado(a) com sucesso! Código gerado: %d.';
  STR_ENTIDADE_ATUALIZADO_COM_SUCESSO = '%s atualizado(a) com sucesso!';
  STR_ENTIDADE_DESEJA_EXCLUIR         = 'Deseja realmente excluir este(a) %s?';

  //CRUD
  STR_CRUD_CABECALHO = 'Cadastro de %s';

  //Transação
  STR_JA_EXISTE_TRANSACAO_ATIVA   = 'Não foi possivel abrir uma nova transação! Motivo: Já existe uma transação ativa.';
  STR_NAO_EXISTE_TRANSACAO_ATIVA  = 'Não foi possivel %s a transação! Motivo: Não existe uma transação ativa.';
  STR_VALIDA_TRANSACAO_ATIVA      = 'Operação abortada! Motivo: Para realizar esta operação é necessário ter uma transação ativa.';
  STR_ABORTAR                     = 'abortar';
  STR_FINALIZAR                   = 'finalizar';

  //Material
  STR_MATERIAL_DESCRICAO_NAO_INFORMADO      = 'Campo DESCRIÇÃO não informado';
  STR_MATERIAL_VALOR_UNITARIO_NAO_INFORMADO = 'Campo VALOR UNITÁRIO não informado';

  //Cliente
  STR_CLIENTE_NOME_NAO_INFORMADO          = 'Campo NOME não informado';
  STR_CLIENTE_SOLICITANTE_NAO_INFORMADO   = 'Campo SOLICITANTE não informado';
  STR_CLIENTE_CPF_CNPJ_NAO_INFORMADO      = 'Campo CPF ou CNPJ não informado';
  STR_CLIENTE_TELEFONE_NAO_INFORMADO      = 'Campo TELEFONE não informado';
  STR_CLIENTE_CIDADE_NAO_INFORMADO        = 'Campo CIDADE não informado';
  STR_CLIENTE_ENDERECO_NAO_INFORMADO      = 'Campo ENDEREÇO não informado';
  STR_CLIENTE_TIPO_PESSOA_NAO_SELECIONADO = 'Selecione um TIPO DE PESSOA';

  //Os
  STR_OS_CLIENTE_NAO_INFORMADO           = 'Campo CLIENTE não informado';
  STR_OS_EQUIPAMENTO_NAO_INFORMADO       = 'Campo EQUIPAMENTO não informado';
  STR_OS_DATA_ENTRADA_NAO_INFORMADO      = 'Campo DATA DE ENTRADA não informado';
  STR_OS_DESCRICAO_SERVICO_NAO_INFORMADO = 'Campo DESCRIÇÃO SERVIÇO não informado';

  //Cidade
  STR_CIDADE_NOME_NAO_INFORMADO   = 'Campo CIDADE não informado';
  STR_CIDADE_ESTADO_NAO_INFORMADO = 'Campo ESTADO não informado';

  //Estado
  STR_ESTADO_PAIS_NAO_INFORMADO   = 'Campo PAÍS não informado';
  STR_ESTADO_ESTADO_NAO_INFORMADO = 'Campo ESTADO não informado';
  STR_ESTADO_UF_NAO_INFORMADO     = 'Campo UF não informado';

  //Pais
  STR_PAIS_NAO_INFORMADO  = 'Campo PAÍS não informado';
  STR_SIGLA_NAO_INFORMADO = 'Campo SIGLA não informado';

  //Equipamento
  STR_EQUIPAMENTO_NOME_NAO_INFORMADO    = 'Campo NOME não informado';
  STR_EQUIPAMENTO_MARCA_NAO_INFORMADO   = 'Campo MARCA não informado';
  STR_EQUIPAMENTO_N_SERIE_NAO_INFORMADO = 'Campo Nº SÉRIE não informado';

  //Tecnico
  STR_TECNICO_NOME_NAO_INFORMADO       = 'Campo NOME não inforamado';
  STR_TECNICO_VALOR_HORA_NAO_INFORMADO = 'Campo VALOR HORA não informado';

  //Usuario
  STR_USUARIO_NOME_NAO_INFORMADO  = 'Campo NOME não informado';
  STR_USUARIO_SENHA_NAO_INFORMADO = 'Campo SENHA não informado';








  implementation

end.
