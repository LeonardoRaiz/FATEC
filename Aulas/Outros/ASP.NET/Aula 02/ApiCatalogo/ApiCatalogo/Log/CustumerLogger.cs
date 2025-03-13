namespace ApiCatalogo.Log;

public class CustumerLogger : ILogger
{
    private readonly string loggerName;

    private readonly CustomLoggerProviderConfiguration loggerProviderConfiguration;

    public CustumerLogger(string name, CustomLoggerProviderConfiguration configuration)
    {
        loggerName = name;
        loggerProviderConfiguration = configuration;
    }

    public bool IsEnabled(LogLevel logLevel)
    {
        return logLevel == loggerProviderConfiguration.LogLevel;
    }

    public IDisposable? BeginScope<TState>(TState state) where TState : notnull
    {
        return null;
    }
    
    public void Log<TState>(LogLevel logLevel, EventId eventId, TState state, Exception? exception, Func<TState, Exception?, string> formatter)
    {
        string mensagem = $"{logLevel.ToString()}: {eventId.Id} - {formatter(state, exception)}";
        EscreverTextoNoArquivo(mensagem);
    }

    private void EscreverTextoNoArquivo(string mensagem)
    {
        string caminhoArquivoLog = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Log_teste.txt");
        Console.WriteLine(caminhoArquivoLog);

        using (StreamWriter streamWriter = new StreamWriter(caminhoArquivoLog,true))
        {
            try
            {
                streamWriter.WriteLine(mensagem);
                streamWriter.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }
        }
    }
}