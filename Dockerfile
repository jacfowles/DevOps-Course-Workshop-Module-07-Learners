FROM mcr.microsoft.com/dotnet/sdk:5.0
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - 
RUN apt-get update && apt-get install -y nodejs
WORKDIR /app
COPY . ./
RUN dotnet build
WORKDIR DotnetTemplate.Web
RUN npm install
RUN npm run build
ENTRYPOINT ["dotnet", "run"]
