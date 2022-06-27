-- name: CreateTransfer :one
insert into transfers (
    from_account_id,
    to_account_id,
    amount
    ) values (
     $1, $2, $3
) returning *;

-- name: GetTransfer :one
select * from transfers
where id = $1 limit 1;

-- name: ListTransfers :many
select * from transfers
order by id
limit $1
offset $2;

-- name: UpdateTransfer :one
update transfers
set amount = $1
where id = $2 and from_account_id = $3 and to_account_id = $4
returning *;

-- name: DeleteTransfer :one
delete from transfers
where id = $1
returning *;
