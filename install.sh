wget http://downloads.linux.hpe.com/SDR/repo/mcp/GPG-KEY-mcp -O /tmp/proliant.gpg
apt-key add /tmp/proliant.gpg
echo -e "deb http://downloads.linux.hpe.com/SDR/repo/mcp/ wheezy/current non-free" > /etc/apt/sources.list.d/proliant.sources.list
apt-get update && apt-get install hpacucli

# Возможные проблемы
# После данной процедуры при apt update может возникать такая штука:
# GPG error: http://downloads.linux.hpe.com/SDR/repo/mcp wheezy/current Release: The following signatures couldn't be verified because the public key is not available: NO_PUBKEY C208ADDE26C2B797

Чтобы исправить делаем следующее (установите curl, если нету):
curl http://downloads.linux.hpe.com/SDR/hpPublicKey1024.pub | apt-key add
curl http://downloads.linux.hpe.com/SDR/hpPublicKey2048.pub | apt-key add
curl http://downloads.linux.hpe.com/SDR/hpPublicKey2048_key1.pub | apt-key add
curl http://downloads.linux.hpe.com/SDR/hpePublicKey2048_key1.pub | apt-key add

apt-get update && apt-get install hpacucli