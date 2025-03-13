using System.Collections.Concurrent;

namespace ApiCatalogo.Log;

public class CustomLoggerProvider : ILoggerProvider
{
    private readonly CustomLoggerProviderConfiguration _loggerProviderConfiguration;

    private readonly ConcurrentDictionary<string, CustumerLogger> _loggers =
        new ConcurrentDictionary<string, CustumerLogger>();
    
    public CustomLoggerProvider(CustomLoggerProviderConfiguration loggerProviderConfiguration)
    {
        _loggerProviderConfiguration = loggerProviderConfiguration;
    }

    public ILogger CreateLogger(string categoryName)
    {
        return _loggers.GetOrAdd(categoryName, name => new CustumerLogger(name, _loggerProviderConfiguration));
    }

    public void Dispose()
    {
        _loggers.Clear();
    }
}