create index if not exists ix_kb_chunks_embedding_hnsw
    on public.kb_chunks using hnsw (embedding vector_cosine_ops)
    with (m=16, ef_construction = 64)

create index if not exists ix_kb_chunks_fts_gin on public.kb_chunks using gin (fts)

create index if not exists ix_kb_chunks_doc on public.kb_chunks (doc_path, chunk_ix);
create index if not exists ix_kb_chunks_empresa on public.kb_chunks (empresa);
create index if not exists ix_kb_chunks_client on public.kb_chunks (client_id);