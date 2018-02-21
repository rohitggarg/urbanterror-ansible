#### Plan
> ansible all -a 'df -h'
> ansible local_server -a 'ls ~/Library/urban43'

#### Build
> ansible all -m setup
> ansible local_server -m "copy src=mapcycle.txt dest=~/Library/urban43/q3ut4/mapcycle.txt" --check --diff

#### Test
> ansible-console local_server
>> stat path=../urban43/q3ut4/zUrT43_qvm.pk3

#### Idempotency
> ansible-playbook idempotency.yml --limit local_server

#### Server
> ansible-playbook play.yml --limit local_server