# heroku-docker-react-starter

## Step 1 Create Mern app

Use docker desktop dev env with vscode.


wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | sudo apt-key add -
sudo apt-get install gnupg


curl https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/dn.yarnpkg.com.gpg >/dev/null
sudo sh -c "echo deb <https://dl.yarnpkg.com/debian> stable main \
> /etc/apt/sources.list.d/yarn.list"
sudo apt-get update
sudo apt-get install yarn

echo "deb http://repo.mongodb.org/apt/debian bullseye/mongodb-org/6.0 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org


sudo systemctl start mongod




## Step 2 Deploy to Heroku

### Step 2.1 Install heroku cli & login

```bash
curl https://cli-assets.heroku.com/install.sh | sh
heroku login
```

```bash
sudo apt update
sudo apt upgrade
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install --upgrade nodejs

sudo apt install --upgrade yarn
```

If yarn gpg has error, refresh key as follows <https://www.ubuntuupdates.org/ppa/yarn>

```bash
sudo apt install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/dn.yarnpkg.com.gpg >/dev/null
sudo sh -c "echo deb <https://dl.yarnpkg.com/debian> stable main \
> /etc/apt/sources.list.d/yarn.list"
sudo apt-get update
sudo apt-get install yarn
```

## Step 3 Add more features to your app

## Reference

App link

- <https://sleepy-oasis-54564.herokuapp.com/>

Heroku docker deploy getting started

- <https://devcenter.heroku.com/categories/deploying-with-docker>

Heroku CICD Test git -> heroku -> auto-deploy

- <https://devcenter.heroku.com/articles/container-registry-and-runtime>

React cosmo

- <https://github.com/react-cosmos/create-react-app-example>

Pipeline

- <https://devcenter.heroku.com/articles/pipelines>

Review apps

- <https://devcenter.heroku.com/articles/github-integration-review-apps#changes>

# $ Azure version

- [heroku-docker-react-starter](https://github.com/ray-chunkit-chung/heroku-docker-react-starter)
- [azure-docker-react-advanced](https://github.com/ray-chunkit-chung/azure-docker-react-advanced)
