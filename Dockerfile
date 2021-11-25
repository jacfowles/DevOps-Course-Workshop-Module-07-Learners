FROM mcr.microsoft.com/dotnet/sdk:6.0
RUN curl -fsSL https://deb.nodesource.com/setup_17.x | bash - apt-get install -y nodejs
COPY . ./
RUN dotnet build
WORKDIR DotnetTemplate.Web
RUN npm install
RUN npm run build
