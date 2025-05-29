
/**
 * Client
**/

import * as runtime from './runtime/library.js';
import $Types = runtime.Types // general types
import $Public = runtime.Types.Public
import $Utils = runtime.Types.Utils
import $Extensions = runtime.Types.Extensions
import $Result = runtime.Types.Result

export type PrismaPromise<T> = $Public.PrismaPromise<T>


/**
 * Model Catalogo
 * 
 */
export type Catalogo = $Result.DefaultSelection<Prisma.$CatalogoPayload>
/**
 * Model Produto
 * 
 */
export type Produto = $Result.DefaultSelection<Prisma.$ProdutoPayload>

/**
 * ##  Prisma Client ʲˢ
 *
 * Type-safe database client for TypeScript & Node.js
 * @example
 * ```
 * const prisma = new PrismaClient()
 * // Fetch zero or more Catalogos
 * const catalogos = await prisma.catalogo.findMany()
 * ```
 *
 *
 * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client).
 */
export class PrismaClient<
  ClientOptions extends Prisma.PrismaClientOptions = Prisma.PrismaClientOptions,
  U = 'log' extends keyof ClientOptions ? ClientOptions['log'] extends Array<Prisma.LogLevel | Prisma.LogDefinition> ? Prisma.GetEvents<ClientOptions['log']> : never : never,
  ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs
> {
  [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['other'] }

    /**
   * ##  Prisma Client ʲˢ
   *
   * Type-safe database client for TypeScript & Node.js
   * @example
   * ```
   * const prisma = new PrismaClient()
   * // Fetch zero or more Catalogos
   * const catalogos = await prisma.catalogo.findMany()
   * ```
   *
   *
   * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client).
   */

  constructor(optionsArg ?: Prisma.Subset<ClientOptions, Prisma.PrismaClientOptions>);
  $on<V extends U>(eventType: V, callback: (event: V extends 'query' ? Prisma.QueryEvent : Prisma.LogEvent) => void): PrismaClient;

  /**
   * Connect with the database
   */
  $connect(): $Utils.JsPromise<void>;

  /**
   * Disconnect from the database
   */
  $disconnect(): $Utils.JsPromise<void>;

  /**
   * Add a middleware
   * @deprecated since 4.16.0. For new code, prefer client extensions instead.
   * @see https://pris.ly/d/extensions
   */
  $use(cb: Prisma.Middleware): void

/**
   * Executes a prepared raw query and returns the number of affected rows.
   * @example
   * ```
   * const result = await prisma.$executeRaw`UPDATE User SET cool = ${true} WHERE email = ${'user@email.com'};`
   * ```
   *
   * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client/raw-database-access).
   */
  $executeRaw<T = unknown>(query: TemplateStringsArray | Prisma.Sql, ...values: any[]): Prisma.PrismaPromise<number>;

  /**
   * Executes a raw query and returns the number of affected rows.
   * Susceptible to SQL injections, see documentation.
   * @example
   * ```
   * const result = await prisma.$executeRawUnsafe('UPDATE User SET cool = $1 WHERE email = $2 ;', true, 'user@email.com')
   * ```
   *
   * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client/raw-database-access).
   */
  $executeRawUnsafe<T = unknown>(query: string, ...values: any[]): Prisma.PrismaPromise<number>;

  /**
   * Performs a prepared raw query and returns the `SELECT` data.
   * @example
   * ```
   * const result = await prisma.$queryRaw`SELECT * FROM User WHERE id = ${1} OR email = ${'user@email.com'};`
   * ```
   *
   * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client/raw-database-access).
   */
  $queryRaw<T = unknown>(query: TemplateStringsArray | Prisma.Sql, ...values: any[]): Prisma.PrismaPromise<T>;

  /**
   * Performs a raw query and returns the `SELECT` data.
   * Susceptible to SQL injections, see documentation.
   * @example
   * ```
   * const result = await prisma.$queryRawUnsafe('SELECT * FROM User WHERE id = $1 OR email = $2;', 1, 'user@email.com')
   * ```
   *
   * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client/raw-database-access).
   */
  $queryRawUnsafe<T = unknown>(query: string, ...values: any[]): Prisma.PrismaPromise<T>;


  /**
   * Allows the running of a sequence of read/write operations that are guaranteed to either succeed or fail as a whole.
   * @example
   * ```
   * const [george, bob, alice] = await prisma.$transaction([
   *   prisma.user.create({ data: { name: 'George' } }),
   *   prisma.user.create({ data: { name: 'Bob' } }),
   *   prisma.user.create({ data: { name: 'Alice' } }),
   * ])
   * ```
   * 
   * Read more in our [docs](https://www.prisma.io/docs/concepts/components/prisma-client/transactions).
   */
  $transaction<P extends Prisma.PrismaPromise<any>[]>(arg: [...P], options?: { isolationLevel?: Prisma.TransactionIsolationLevel }): $Utils.JsPromise<runtime.Types.Utils.UnwrapTuple<P>>

  $transaction<R>(fn: (prisma: Omit<PrismaClient, runtime.ITXClientDenyList>) => $Utils.JsPromise<R>, options?: { maxWait?: number, timeout?: number, isolationLevel?: Prisma.TransactionIsolationLevel }): $Utils.JsPromise<R>


  $extends: $Extensions.ExtendsHook<"extends", Prisma.TypeMapCb<ClientOptions>, ExtArgs, $Utils.Call<Prisma.TypeMapCb<ClientOptions>, {
    extArgs: ExtArgs
  }>>

      /**
   * `prisma.catalogo`: Exposes CRUD operations for the **Catalogo** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more Catalogos
    * const catalogos = await prisma.catalogo.findMany()
    * ```
    */
  get catalogo(): Prisma.CatalogoDelegate<ExtArgs, ClientOptions>;

  /**
   * `prisma.produto`: Exposes CRUD operations for the **Produto** model.
    * Example usage:
    * ```ts
    * // Fetch zero or more Produtos
    * const produtos = await prisma.produto.findMany()
    * ```
    */
  get produto(): Prisma.ProdutoDelegate<ExtArgs, ClientOptions>;
}

export namespace Prisma {
  export import DMMF = runtime.DMMF

  export type PrismaPromise<T> = $Public.PrismaPromise<T>

  /**
   * Validator
   */
  export import validator = runtime.Public.validator

  /**
   * Prisma Errors
   */
  export import PrismaClientKnownRequestError = runtime.PrismaClientKnownRequestError
  export import PrismaClientUnknownRequestError = runtime.PrismaClientUnknownRequestError
  export import PrismaClientRustPanicError = runtime.PrismaClientRustPanicError
  export import PrismaClientInitializationError = runtime.PrismaClientInitializationError
  export import PrismaClientValidationError = runtime.PrismaClientValidationError

  /**
   * Re-export of sql-template-tag
   */
  export import sql = runtime.sqltag
  export import empty = runtime.empty
  export import join = runtime.join
  export import raw = runtime.raw
  export import Sql = runtime.Sql



  /**
   * Decimal.js
   */
  export import Decimal = runtime.Decimal

  export type DecimalJsLike = runtime.DecimalJsLike

  /**
   * Metrics
   */
  export type Metrics = runtime.Metrics
  export type Metric<T> = runtime.Metric<T>
  export type MetricHistogram = runtime.MetricHistogram
  export type MetricHistogramBucket = runtime.MetricHistogramBucket

  /**
  * Extensions
  */
  export import Extension = $Extensions.UserArgs
  export import getExtensionContext = runtime.Extensions.getExtensionContext
  export import Args = $Public.Args
  export import Payload = $Public.Payload
  export import Result = $Public.Result
  export import Exact = $Public.Exact

  /**
   * Prisma Client JS version: 6.7.0
   * Query Engine version: 3cff47a7f5d65c3ea74883f1d736e41d68ce91ed
   */
  export type PrismaVersion = {
    client: string
  }

  export const prismaVersion: PrismaVersion

  /**
   * Utility Types
   */


  export import JsonObject = runtime.JsonObject
  export import JsonArray = runtime.JsonArray
  export import JsonValue = runtime.JsonValue
  export import InputJsonObject = runtime.InputJsonObject
  export import InputJsonArray = runtime.InputJsonArray
  export import InputJsonValue = runtime.InputJsonValue

  /**
   * Types of the values used to represent different kinds of `null` values when working with JSON fields.
   *
   * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
   */
  namespace NullTypes {
    /**
    * Type of `Prisma.DbNull`.
    *
    * You cannot use other instances of this class. Please use the `Prisma.DbNull` value.
    *
    * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
    */
    class DbNull {
      private DbNull: never
      private constructor()
    }

    /**
    * Type of `Prisma.JsonNull`.
    *
    * You cannot use other instances of this class. Please use the `Prisma.JsonNull` value.
    *
    * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
    */
    class JsonNull {
      private JsonNull: never
      private constructor()
    }

    /**
    * Type of `Prisma.AnyNull`.
    *
    * You cannot use other instances of this class. Please use the `Prisma.AnyNull` value.
    *
    * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
    */
    class AnyNull {
      private AnyNull: never
      private constructor()
    }
  }

  /**
   * Helper for filtering JSON entries that have `null` on the database (empty on the db)
   *
   * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
   */
  export const DbNull: NullTypes.DbNull

  /**
   * Helper for filtering JSON entries that have JSON `null` values (not empty on the db)
   *
   * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
   */
  export const JsonNull: NullTypes.JsonNull

  /**
   * Helper for filtering JSON entries that are `Prisma.DbNull` or `Prisma.JsonNull`
   *
   * @see https://www.prisma.io/docs/concepts/components/prisma-client/working-with-fields/working-with-json-fields#filtering-on-a-json-field
   */
  export const AnyNull: NullTypes.AnyNull

  type SelectAndInclude = {
    select: any
    include: any
  }

  type SelectAndOmit = {
    select: any
    omit: any
  }

  /**
   * Get the type of the value, that the Promise holds.
   */
  export type PromiseType<T extends PromiseLike<any>> = T extends PromiseLike<infer U> ? U : T;

  /**
   * Get the return type of a function which returns a Promise.
   */
  export type PromiseReturnType<T extends (...args: any) => $Utils.JsPromise<any>> = PromiseType<ReturnType<T>>

  /**
   * From T, pick a set of properties whose keys are in the union K
   */
  type Prisma__Pick<T, K extends keyof T> = {
      [P in K]: T[P];
  };


  export type Enumerable<T> = T | Array<T>;

  export type RequiredKeys<T> = {
    [K in keyof T]-?: {} extends Prisma__Pick<T, K> ? never : K
  }[keyof T]

  export type TruthyKeys<T> = keyof {
    [K in keyof T as T[K] extends false | undefined | null ? never : K]: K
  }

  export type TrueKeys<T> = TruthyKeys<Prisma__Pick<T, RequiredKeys<T>>>

  /**
   * Subset
   * @desc From `T` pick properties that exist in `U`. Simple version of Intersection
   */
  export type Subset<T, U> = {
    [key in keyof T]: key extends keyof U ? T[key] : never;
  };

  /**
   * SelectSubset
   * @desc From `T` pick properties that exist in `U`. Simple version of Intersection.
   * Additionally, it validates, if both select and include are present. If the case, it errors.
   */
  export type SelectSubset<T, U> = {
    [key in keyof T]: key extends keyof U ? T[key] : never
  } &
    (T extends SelectAndInclude
      ? 'Please either choose `select` or `include`.'
      : T extends SelectAndOmit
        ? 'Please either choose `select` or `omit`.'
        : {})

  /**
   * Subset + Intersection
   * @desc From `T` pick properties that exist in `U` and intersect `K`
   */
  export type SubsetIntersection<T, U, K> = {
    [key in keyof T]: key extends keyof U ? T[key] : never
  } &
    K

  type Without<T, U> = { [P in Exclude<keyof T, keyof U>]?: never };

  /**
   * XOR is needed to have a real mutually exclusive union type
   * https://stackoverflow.com/questions/42123407/does-typescript-support-mutually-exclusive-types
   */
  type XOR<T, U> =
    T extends object ?
    U extends object ?
      (Without<T, U> & U) | (Without<U, T> & T)
    : U : T


  /**
   * Is T a Record?
   */
  type IsObject<T extends any> = T extends Array<any>
  ? False
  : T extends Date
  ? False
  : T extends Uint8Array
  ? False
  : T extends BigInt
  ? False
  : T extends object
  ? True
  : False


  /**
   * If it's T[], return T
   */
  export type UnEnumerate<T extends unknown> = T extends Array<infer U> ? U : T

  /**
   * From ts-toolbelt
   */

  type __Either<O extends object, K extends Key> = Omit<O, K> &
    {
      // Merge all but K
      [P in K]: Prisma__Pick<O, P & keyof O> // With K possibilities
    }[K]

  type EitherStrict<O extends object, K extends Key> = Strict<__Either<O, K>>

  type EitherLoose<O extends object, K extends Key> = ComputeRaw<__Either<O, K>>

  type _Either<
    O extends object,
    K extends Key,
    strict extends Boolean
  > = {
    1: EitherStrict<O, K>
    0: EitherLoose<O, K>
  }[strict]

  type Either<
    O extends object,
    K extends Key,
    strict extends Boolean = 1
  > = O extends unknown ? _Either<O, K, strict> : never

  export type Union = any

  type PatchUndefined<O extends object, O1 extends object> = {
    [K in keyof O]: O[K] extends undefined ? At<O1, K> : O[K]
  } & {}

  /** Helper Types for "Merge" **/
  export type IntersectOf<U extends Union> = (
    U extends unknown ? (k: U) => void : never
  ) extends (k: infer I) => void
    ? I
    : never

  export type Overwrite<O extends object, O1 extends object> = {
      [K in keyof O]: K extends keyof O1 ? O1[K] : O[K];
  } & {};

  type _Merge<U extends object> = IntersectOf<Overwrite<U, {
      [K in keyof U]-?: At<U, K>;
  }>>;

  type Key = string | number | symbol;
  type AtBasic<O extends object, K extends Key> = K extends keyof O ? O[K] : never;
  type AtStrict<O extends object, K extends Key> = O[K & keyof O];
  type AtLoose<O extends object, K extends Key> = O extends unknown ? AtStrict<O, K> : never;
  export type At<O extends object, K extends Key, strict extends Boolean = 1> = {
      1: AtStrict<O, K>;
      0: AtLoose<O, K>;
  }[strict];

  export type ComputeRaw<A extends any> = A extends Function ? A : {
    [K in keyof A]: A[K];
  } & {};

  export type OptionalFlat<O> = {
    [K in keyof O]?: O[K];
  } & {};

  type _Record<K extends keyof any, T> = {
    [P in K]: T;
  };

  // cause typescript not to expand types and preserve names
  type NoExpand<T> = T extends unknown ? T : never;

  // this type assumes the passed object is entirely optional
  type AtLeast<O extends object, K extends string> = NoExpand<
    O extends unknown
    ? | (K extends keyof O ? { [P in K]: O[P] } & O : O)
      | {[P in keyof O as P extends K ? P : never]-?: O[P]} & O
    : never>;

  type _Strict<U, _U = U> = U extends unknown ? U & OptionalFlat<_Record<Exclude<Keys<_U>, keyof U>, never>> : never;

  export type Strict<U extends object> = ComputeRaw<_Strict<U>>;
  /** End Helper Types for "Merge" **/

  export type Merge<U extends object> = ComputeRaw<_Merge<Strict<U>>>;

  /**
  A [[Boolean]]
  */
  export type Boolean = True | False

  // /**
  // 1
  // */
  export type True = 1

  /**
  0
  */
  export type False = 0

  export type Not<B extends Boolean> = {
    0: 1
    1: 0
  }[B]

  export type Extends<A1 extends any, A2 extends any> = [A1] extends [never]
    ? 0 // anything `never` is false
    : A1 extends A2
    ? 1
    : 0

  export type Has<U extends Union, U1 extends Union> = Not<
    Extends<Exclude<U1, U>, U1>
  >

  export type Or<B1 extends Boolean, B2 extends Boolean> = {
    0: {
      0: 0
      1: 1
    }
    1: {
      0: 1
      1: 1
    }
  }[B1][B2]

  export type Keys<U extends Union> = U extends unknown ? keyof U : never

  type Cast<A, B> = A extends B ? A : B;

  export const type: unique symbol;



  /**
   * Used by group by
   */

  export type GetScalarType<T, O> = O extends object ? {
    [P in keyof T]: P extends keyof O
      ? O[P]
      : never
  } : never

  type FieldPaths<
    T,
    U = Omit<T, '_avg' | '_sum' | '_count' | '_min' | '_max'>
  > = IsObject<T> extends True ? U : T

  type GetHavingFields<T> = {
    [K in keyof T]: Or<
      Or<Extends<'OR', K>, Extends<'AND', K>>,
      Extends<'NOT', K>
    > extends True
      ? // infer is only needed to not hit TS limit
        // based on the brilliant idea of Pierre-Antoine Mills
        // https://github.com/microsoft/TypeScript/issues/30188#issuecomment-478938437
        T[K] extends infer TK
        ? GetHavingFields<UnEnumerate<TK> extends object ? Merge<UnEnumerate<TK>> : never>
        : never
      : {} extends FieldPaths<T[K]>
      ? never
      : K
  }[keyof T]

  /**
   * Convert tuple to union
   */
  type _TupleToUnion<T> = T extends (infer E)[] ? E : never
  type TupleToUnion<K extends readonly any[]> = _TupleToUnion<K>
  type MaybeTupleToUnion<T> = T extends any[] ? TupleToUnion<T> : T

  /**
   * Like `Pick`, but additionally can also accept an array of keys
   */
  type PickEnumerable<T, K extends Enumerable<keyof T> | keyof T> = Prisma__Pick<T, MaybeTupleToUnion<K>>

  /**
   * Exclude all keys with underscores
   */
  type ExcludeUnderscoreKeys<T extends string> = T extends `_${string}` ? never : T


  export type FieldRef<Model, FieldType> = runtime.FieldRef<Model, FieldType>

  type FieldRefInputType<Model, FieldType> = Model extends never ? never : FieldRef<Model, FieldType>


  export const ModelName: {
    Catalogo: 'Catalogo',
    Produto: 'Produto'
  };

  export type ModelName = (typeof ModelName)[keyof typeof ModelName]


  export type Datasources = {
    db?: Datasource
  }

  interface TypeMapCb<ClientOptions = {}> extends $Utils.Fn<{extArgs: $Extensions.InternalArgs }, $Utils.Record<string, any>> {
    returns: Prisma.TypeMap<this['params']['extArgs'], ClientOptions extends { omit: infer OmitOptions } ? OmitOptions : {}>
  }

  export type TypeMap<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> = {
    globalOmitOptions: {
      omit: GlobalOmitOptions
    }
    meta: {
      modelProps: "catalogo" | "produto"
      txIsolationLevel: Prisma.TransactionIsolationLevel
    }
    model: {
      Catalogo: {
        payload: Prisma.$CatalogoPayload<ExtArgs>
        fields: Prisma.CatalogoFieldRefs
        operations: {
          findUnique: {
            args: Prisma.CatalogoFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$CatalogoPayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.CatalogoFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$CatalogoPayload>
          }
          findFirst: {
            args: Prisma.CatalogoFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$CatalogoPayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.CatalogoFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$CatalogoPayload>
          }
          findMany: {
            args: Prisma.CatalogoFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$CatalogoPayload>[]
          }
          create: {
            args: Prisma.CatalogoCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$CatalogoPayload>
          }
          createMany: {
            args: Prisma.CatalogoCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.CatalogoCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$CatalogoPayload>[]
          }
          delete: {
            args: Prisma.CatalogoDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$CatalogoPayload>
          }
          update: {
            args: Prisma.CatalogoUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$CatalogoPayload>
          }
          deleteMany: {
            args: Prisma.CatalogoDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.CatalogoUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.CatalogoUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$CatalogoPayload>[]
          }
          upsert: {
            args: Prisma.CatalogoUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$CatalogoPayload>
          }
          aggregate: {
            args: Prisma.CatalogoAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateCatalogo>
          }
          groupBy: {
            args: Prisma.CatalogoGroupByArgs<ExtArgs>
            result: $Utils.Optional<CatalogoGroupByOutputType>[]
          }
          count: {
            args: Prisma.CatalogoCountArgs<ExtArgs>
            result: $Utils.Optional<CatalogoCountAggregateOutputType> | number
          }
        }
      }
      Produto: {
        payload: Prisma.$ProdutoPayload<ExtArgs>
        fields: Prisma.ProdutoFieldRefs
        operations: {
          findUnique: {
            args: Prisma.ProdutoFindUniqueArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ProdutoPayload> | null
          }
          findUniqueOrThrow: {
            args: Prisma.ProdutoFindUniqueOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ProdutoPayload>
          }
          findFirst: {
            args: Prisma.ProdutoFindFirstArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ProdutoPayload> | null
          }
          findFirstOrThrow: {
            args: Prisma.ProdutoFindFirstOrThrowArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ProdutoPayload>
          }
          findMany: {
            args: Prisma.ProdutoFindManyArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ProdutoPayload>[]
          }
          create: {
            args: Prisma.ProdutoCreateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ProdutoPayload>
          }
          createMany: {
            args: Prisma.ProdutoCreateManyArgs<ExtArgs>
            result: BatchPayload
          }
          createManyAndReturn: {
            args: Prisma.ProdutoCreateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ProdutoPayload>[]
          }
          delete: {
            args: Prisma.ProdutoDeleteArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ProdutoPayload>
          }
          update: {
            args: Prisma.ProdutoUpdateArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ProdutoPayload>
          }
          deleteMany: {
            args: Prisma.ProdutoDeleteManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateMany: {
            args: Prisma.ProdutoUpdateManyArgs<ExtArgs>
            result: BatchPayload
          }
          updateManyAndReturn: {
            args: Prisma.ProdutoUpdateManyAndReturnArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ProdutoPayload>[]
          }
          upsert: {
            args: Prisma.ProdutoUpsertArgs<ExtArgs>
            result: $Utils.PayloadToResult<Prisma.$ProdutoPayload>
          }
          aggregate: {
            args: Prisma.ProdutoAggregateArgs<ExtArgs>
            result: $Utils.Optional<AggregateProduto>
          }
          groupBy: {
            args: Prisma.ProdutoGroupByArgs<ExtArgs>
            result: $Utils.Optional<ProdutoGroupByOutputType>[]
          }
          count: {
            args: Prisma.ProdutoCountArgs<ExtArgs>
            result: $Utils.Optional<ProdutoCountAggregateOutputType> | number
          }
        }
      }
    }
  } & {
    other: {
      payload: any
      operations: {
        $executeRaw: {
          args: [query: TemplateStringsArray | Prisma.Sql, ...values: any[]],
          result: any
        }
        $executeRawUnsafe: {
          args: [query: string, ...values: any[]],
          result: any
        }
        $queryRaw: {
          args: [query: TemplateStringsArray | Prisma.Sql, ...values: any[]],
          result: any
        }
        $queryRawUnsafe: {
          args: [query: string, ...values: any[]],
          result: any
        }
      }
    }
  }
  export const defineExtension: $Extensions.ExtendsHook<"define", Prisma.TypeMapCb, $Extensions.DefaultArgs>
  export type DefaultPrismaClient = PrismaClient
  export type ErrorFormat = 'pretty' | 'colorless' | 'minimal'
  export interface PrismaClientOptions {
    /**
     * Overwrites the datasource url from your schema.prisma file
     */
    datasources?: Datasources
    /**
     * Overwrites the datasource url from your schema.prisma file
     */
    datasourceUrl?: string
    /**
     * @default "colorless"
     */
    errorFormat?: ErrorFormat
    /**
     * @example
     * ```
     * // Defaults to stdout
     * log: ['query', 'info', 'warn', 'error']
     * 
     * // Emit as events
     * log: [
     *   { emit: 'stdout', level: 'query' },
     *   { emit: 'stdout', level: 'info' },
     *   { emit: 'stdout', level: 'warn' }
     *   { emit: 'stdout', level: 'error' }
     * ]
     * ```
     * Read more in our [docs](https://www.prisma.io/docs/reference/tools-and-interfaces/prisma-client/logging#the-log-option).
     */
    log?: (LogLevel | LogDefinition)[]
    /**
     * The default values for transactionOptions
     * maxWait ?= 2000
     * timeout ?= 5000
     */
    transactionOptions?: {
      maxWait?: number
      timeout?: number
      isolationLevel?: Prisma.TransactionIsolationLevel
    }
    /**
     * Global configuration for omitting model fields by default.
     * 
     * @example
     * ```
     * const prisma = new PrismaClient({
     *   omit: {
     *     user: {
     *       password: true
     *     }
     *   }
     * })
     * ```
     */
    omit?: Prisma.GlobalOmitConfig
  }
  export type GlobalOmitConfig = {
    catalogo?: CatalogoOmit
    produto?: ProdutoOmit
  }

  /* Types for Logging */
  export type LogLevel = 'info' | 'query' | 'warn' | 'error'
  export type LogDefinition = {
    level: LogLevel
    emit: 'stdout' | 'event'
  }

  export type GetLogType<T extends LogLevel | LogDefinition> = T extends LogDefinition ? T['emit'] extends 'event' ? T['level'] : never : never
  export type GetEvents<T extends any> = T extends Array<LogLevel | LogDefinition> ?
    GetLogType<T[0]> | GetLogType<T[1]> | GetLogType<T[2]> | GetLogType<T[3]>
    : never

  export type QueryEvent = {
    timestamp: Date
    query: string
    params: string
    duration: number
    target: string
  }

  export type LogEvent = {
    timestamp: Date
    message: string
    target: string
  }
  /* End Types for Logging */


  export type PrismaAction =
    | 'findUnique'
    | 'findUniqueOrThrow'
    | 'findMany'
    | 'findFirst'
    | 'findFirstOrThrow'
    | 'create'
    | 'createMany'
    | 'createManyAndReturn'
    | 'update'
    | 'updateMany'
    | 'updateManyAndReturn'
    | 'upsert'
    | 'delete'
    | 'deleteMany'
    | 'executeRaw'
    | 'queryRaw'
    | 'aggregate'
    | 'count'
    | 'runCommandRaw'
    | 'findRaw'
    | 'groupBy'

  /**
   * These options are being passed into the middleware as "params"
   */
  export type MiddlewareParams = {
    model?: ModelName
    action: PrismaAction
    args: any
    dataPath: string[]
    runInTransaction: boolean
  }

  /**
   * The `T` type makes sure, that the `return proceed` is not forgotten in the middleware implementation
   */
  export type Middleware<T = any> = (
    params: MiddlewareParams,
    next: (params: MiddlewareParams) => $Utils.JsPromise<T>,
  ) => $Utils.JsPromise<T>

  // tested in getLogLevel.test.ts
  export function getLogLevel(log: Array<LogLevel | LogDefinition>): LogLevel | undefined;

  /**
   * `PrismaClient` proxy available in interactive transactions.
   */
  export type TransactionClient = Omit<Prisma.DefaultPrismaClient, runtime.ITXClientDenyList>

  export type Datasource = {
    url?: string
  }

  /**
   * Count Types
   */


  /**
   * Count Type CatalogoCountOutputType
   */

  export type CatalogoCountOutputType = {
    produtos: number
  }

  export type CatalogoCountOutputTypeSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    produtos?: boolean | CatalogoCountOutputTypeCountProdutosArgs
  }

  // Custom InputTypes
  /**
   * CatalogoCountOutputType without action
   */
  export type CatalogoCountOutputTypeDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the CatalogoCountOutputType
     */
    select?: CatalogoCountOutputTypeSelect<ExtArgs> | null
  }

  /**
   * CatalogoCountOutputType without action
   */
  export type CatalogoCountOutputTypeCountProdutosArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: ProdutoWhereInput
  }


  /**
   * Models
   */

  /**
   * Model Catalogo
   */

  export type AggregateCatalogo = {
    _count: CatalogoCountAggregateOutputType | null
    _avg: CatalogoAvgAggregateOutputType | null
    _sum: CatalogoSumAggregateOutputType | null
    _min: CatalogoMinAggregateOutputType | null
    _max: CatalogoMaxAggregateOutputType | null
  }

  export type CatalogoAvgAggregateOutputType = {
    id: number | null
  }

  export type CatalogoSumAggregateOutputType = {
    id: number | null
  }

  export type CatalogoMinAggregateOutputType = {
    id: number | null
    nome: string | null
  }

  export type CatalogoMaxAggregateOutputType = {
    id: number | null
    nome: string | null
  }

  export type CatalogoCountAggregateOutputType = {
    id: number
    nome: number
    _all: number
  }


  export type CatalogoAvgAggregateInputType = {
    id?: true
  }

  export type CatalogoSumAggregateInputType = {
    id?: true
  }

  export type CatalogoMinAggregateInputType = {
    id?: true
    nome?: true
  }

  export type CatalogoMaxAggregateInputType = {
    id?: true
    nome?: true
  }

  export type CatalogoCountAggregateInputType = {
    id?: true
    nome?: true
    _all?: true
  }

  export type CatalogoAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which Catalogo to aggregate.
     */
    where?: CatalogoWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Catalogos to fetch.
     */
    orderBy?: CatalogoOrderByWithRelationInput | CatalogoOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: CatalogoWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Catalogos from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Catalogos.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned Catalogos
    **/
    _count?: true | CatalogoCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to average
    **/
    _avg?: CatalogoAvgAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to sum
    **/
    _sum?: CatalogoSumAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: CatalogoMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: CatalogoMaxAggregateInputType
  }

  export type GetCatalogoAggregateType<T extends CatalogoAggregateArgs> = {
        [P in keyof T & keyof AggregateCatalogo]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateCatalogo[P]>
      : GetScalarType<T[P], AggregateCatalogo[P]>
  }




  export type CatalogoGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: CatalogoWhereInput
    orderBy?: CatalogoOrderByWithAggregationInput | CatalogoOrderByWithAggregationInput[]
    by: CatalogoScalarFieldEnum[] | CatalogoScalarFieldEnum
    having?: CatalogoScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: CatalogoCountAggregateInputType | true
    _avg?: CatalogoAvgAggregateInputType
    _sum?: CatalogoSumAggregateInputType
    _min?: CatalogoMinAggregateInputType
    _max?: CatalogoMaxAggregateInputType
  }

  export type CatalogoGroupByOutputType = {
    id: number
    nome: string
    _count: CatalogoCountAggregateOutputType | null
    _avg: CatalogoAvgAggregateOutputType | null
    _sum: CatalogoSumAggregateOutputType | null
    _min: CatalogoMinAggregateOutputType | null
    _max: CatalogoMaxAggregateOutputType | null
  }

  type GetCatalogoGroupByPayload<T extends CatalogoGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<CatalogoGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof CatalogoGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], CatalogoGroupByOutputType[P]>
            : GetScalarType<T[P], CatalogoGroupByOutputType[P]>
        }
      >
    >


  export type CatalogoSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    nome?: boolean
    produtos?: boolean | Catalogo$produtosArgs<ExtArgs>
    _count?: boolean | CatalogoCountOutputTypeDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["catalogo"]>

  export type CatalogoSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    nome?: boolean
  }, ExtArgs["result"]["catalogo"]>

  export type CatalogoSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    nome?: boolean
  }, ExtArgs["result"]["catalogo"]>

  export type CatalogoSelectScalar = {
    id?: boolean
    nome?: boolean
  }

  export type CatalogoOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "nome", ExtArgs["result"]["catalogo"]>
  export type CatalogoInclude<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    produtos?: boolean | Catalogo$produtosArgs<ExtArgs>
    _count?: boolean | CatalogoCountOutputTypeDefaultArgs<ExtArgs>
  }
  export type CatalogoIncludeCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {}
  export type CatalogoIncludeUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {}

  export type $CatalogoPayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "Catalogo"
    objects: {
      produtos: Prisma.$ProdutoPayload<ExtArgs>[]
    }
    scalars: $Extensions.GetPayloadResult<{
      id: number
      nome: string
    }, ExtArgs["result"]["catalogo"]>
    composites: {}
  }

  type CatalogoGetPayload<S extends boolean | null | undefined | CatalogoDefaultArgs> = $Result.GetResult<Prisma.$CatalogoPayload, S>

  type CatalogoCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<CatalogoFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: CatalogoCountAggregateInputType | true
    }

  export interface CatalogoDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['Catalogo'], meta: { name: 'Catalogo' } }
    /**
     * Find zero or one Catalogo that matches the filter.
     * @param {CatalogoFindUniqueArgs} args - Arguments to find a Catalogo
     * @example
     * // Get one Catalogo
     * const catalogo = await prisma.catalogo.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends CatalogoFindUniqueArgs>(args: SelectSubset<T, CatalogoFindUniqueArgs<ExtArgs>>): Prisma__CatalogoClient<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one Catalogo that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {CatalogoFindUniqueOrThrowArgs} args - Arguments to find a Catalogo
     * @example
     * // Get one Catalogo
     * const catalogo = await prisma.catalogo.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends CatalogoFindUniqueOrThrowArgs>(args: SelectSubset<T, CatalogoFindUniqueOrThrowArgs<ExtArgs>>): Prisma__CatalogoClient<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first Catalogo that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {CatalogoFindFirstArgs} args - Arguments to find a Catalogo
     * @example
     * // Get one Catalogo
     * const catalogo = await prisma.catalogo.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends CatalogoFindFirstArgs>(args?: SelectSubset<T, CatalogoFindFirstArgs<ExtArgs>>): Prisma__CatalogoClient<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first Catalogo that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {CatalogoFindFirstOrThrowArgs} args - Arguments to find a Catalogo
     * @example
     * // Get one Catalogo
     * const catalogo = await prisma.catalogo.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends CatalogoFindFirstOrThrowArgs>(args?: SelectSubset<T, CatalogoFindFirstOrThrowArgs<ExtArgs>>): Prisma__CatalogoClient<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more Catalogos that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {CatalogoFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all Catalogos
     * const catalogos = await prisma.catalogo.findMany()
     * 
     * // Get first 10 Catalogos
     * const catalogos = await prisma.catalogo.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const catalogoWithIdOnly = await prisma.catalogo.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends CatalogoFindManyArgs>(args?: SelectSubset<T, CatalogoFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a Catalogo.
     * @param {CatalogoCreateArgs} args - Arguments to create a Catalogo.
     * @example
     * // Create one Catalogo
     * const Catalogo = await prisma.catalogo.create({
     *   data: {
     *     // ... data to create a Catalogo
     *   }
     * })
     * 
     */
    create<T extends CatalogoCreateArgs>(args: SelectSubset<T, CatalogoCreateArgs<ExtArgs>>): Prisma__CatalogoClient<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many Catalogos.
     * @param {CatalogoCreateManyArgs} args - Arguments to create many Catalogos.
     * @example
     * // Create many Catalogos
     * const catalogo = await prisma.catalogo.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends CatalogoCreateManyArgs>(args?: SelectSubset<T, CatalogoCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many Catalogos and returns the data saved in the database.
     * @param {CatalogoCreateManyAndReturnArgs} args - Arguments to create many Catalogos.
     * @example
     * // Create many Catalogos
     * const catalogo = await prisma.catalogo.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many Catalogos and only return the `id`
     * const catalogoWithIdOnly = await prisma.catalogo.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends CatalogoCreateManyAndReturnArgs>(args?: SelectSubset<T, CatalogoCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a Catalogo.
     * @param {CatalogoDeleteArgs} args - Arguments to delete one Catalogo.
     * @example
     * // Delete one Catalogo
     * const Catalogo = await prisma.catalogo.delete({
     *   where: {
     *     // ... filter to delete one Catalogo
     *   }
     * })
     * 
     */
    delete<T extends CatalogoDeleteArgs>(args: SelectSubset<T, CatalogoDeleteArgs<ExtArgs>>): Prisma__CatalogoClient<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one Catalogo.
     * @param {CatalogoUpdateArgs} args - Arguments to update one Catalogo.
     * @example
     * // Update one Catalogo
     * const catalogo = await prisma.catalogo.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends CatalogoUpdateArgs>(args: SelectSubset<T, CatalogoUpdateArgs<ExtArgs>>): Prisma__CatalogoClient<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more Catalogos.
     * @param {CatalogoDeleteManyArgs} args - Arguments to filter Catalogos to delete.
     * @example
     * // Delete a few Catalogos
     * const { count } = await prisma.catalogo.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends CatalogoDeleteManyArgs>(args?: SelectSubset<T, CatalogoDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more Catalogos.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {CatalogoUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many Catalogos
     * const catalogo = await prisma.catalogo.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends CatalogoUpdateManyArgs>(args: SelectSubset<T, CatalogoUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more Catalogos and returns the data updated in the database.
     * @param {CatalogoUpdateManyAndReturnArgs} args - Arguments to update many Catalogos.
     * @example
     * // Update many Catalogos
     * const catalogo = await prisma.catalogo.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more Catalogos and only return the `id`
     * const catalogoWithIdOnly = await prisma.catalogo.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends CatalogoUpdateManyAndReturnArgs>(args: SelectSubset<T, CatalogoUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one Catalogo.
     * @param {CatalogoUpsertArgs} args - Arguments to update or create a Catalogo.
     * @example
     * // Update or create a Catalogo
     * const catalogo = await prisma.catalogo.upsert({
     *   create: {
     *     // ... data to create a Catalogo
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the Catalogo we want to update
     *   }
     * })
     */
    upsert<T extends CatalogoUpsertArgs>(args: SelectSubset<T, CatalogoUpsertArgs<ExtArgs>>): Prisma__CatalogoClient<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of Catalogos.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {CatalogoCountArgs} args - Arguments to filter Catalogos to count.
     * @example
     * // Count the number of Catalogos
     * const count = await prisma.catalogo.count({
     *   where: {
     *     // ... the filter for the Catalogos we want to count
     *   }
     * })
    **/
    count<T extends CatalogoCountArgs>(
      args?: Subset<T, CatalogoCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], CatalogoCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a Catalogo.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {CatalogoAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends CatalogoAggregateArgs>(args: Subset<T, CatalogoAggregateArgs>): Prisma.PrismaPromise<GetCatalogoAggregateType<T>>

    /**
     * Group by Catalogo.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {CatalogoGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends CatalogoGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: CatalogoGroupByArgs['orderBy'] }
        : { orderBy?: CatalogoGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, CatalogoGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetCatalogoGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the Catalogo model
   */
  readonly fields: CatalogoFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for Catalogo.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__CatalogoClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    produtos<T extends Catalogo$produtosArgs<ExtArgs> = {}>(args?: Subset<T, Catalogo$produtosArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "findMany", GlobalOmitOptions> | Null>
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the Catalogo model
   */
  interface CatalogoFieldRefs {
    readonly id: FieldRef<"Catalogo", 'Int'>
    readonly nome: FieldRef<"Catalogo", 'String'>
  }
    

  // Custom InputTypes
  /**
   * Catalogo findUnique
   */
  export type CatalogoFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: CatalogoInclude<ExtArgs> | null
    /**
     * Filter, which Catalogo to fetch.
     */
    where: CatalogoWhereUniqueInput
  }

  /**
   * Catalogo findUniqueOrThrow
   */
  export type CatalogoFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: CatalogoInclude<ExtArgs> | null
    /**
     * Filter, which Catalogo to fetch.
     */
    where: CatalogoWhereUniqueInput
  }

  /**
   * Catalogo findFirst
   */
  export type CatalogoFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: CatalogoInclude<ExtArgs> | null
    /**
     * Filter, which Catalogo to fetch.
     */
    where?: CatalogoWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Catalogos to fetch.
     */
    orderBy?: CatalogoOrderByWithRelationInput | CatalogoOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for Catalogos.
     */
    cursor?: CatalogoWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Catalogos from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Catalogos.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of Catalogos.
     */
    distinct?: CatalogoScalarFieldEnum | CatalogoScalarFieldEnum[]
  }

  /**
   * Catalogo findFirstOrThrow
   */
  export type CatalogoFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: CatalogoInclude<ExtArgs> | null
    /**
     * Filter, which Catalogo to fetch.
     */
    where?: CatalogoWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Catalogos to fetch.
     */
    orderBy?: CatalogoOrderByWithRelationInput | CatalogoOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for Catalogos.
     */
    cursor?: CatalogoWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Catalogos from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Catalogos.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of Catalogos.
     */
    distinct?: CatalogoScalarFieldEnum | CatalogoScalarFieldEnum[]
  }

  /**
   * Catalogo findMany
   */
  export type CatalogoFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: CatalogoInclude<ExtArgs> | null
    /**
     * Filter, which Catalogos to fetch.
     */
    where?: CatalogoWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Catalogos to fetch.
     */
    orderBy?: CatalogoOrderByWithRelationInput | CatalogoOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing Catalogos.
     */
    cursor?: CatalogoWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Catalogos from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Catalogos.
     */
    skip?: number
    distinct?: CatalogoScalarFieldEnum | CatalogoScalarFieldEnum[]
  }

  /**
   * Catalogo create
   */
  export type CatalogoCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: CatalogoInclude<ExtArgs> | null
    /**
     * The data needed to create a Catalogo.
     */
    data: XOR<CatalogoCreateInput, CatalogoUncheckedCreateInput>
  }

  /**
   * Catalogo createMany
   */
  export type CatalogoCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many Catalogos.
     */
    data: CatalogoCreateManyInput | CatalogoCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * Catalogo createManyAndReturn
   */
  export type CatalogoCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * The data used to create many Catalogos.
     */
    data: CatalogoCreateManyInput | CatalogoCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * Catalogo update
   */
  export type CatalogoUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: CatalogoInclude<ExtArgs> | null
    /**
     * The data needed to update a Catalogo.
     */
    data: XOR<CatalogoUpdateInput, CatalogoUncheckedUpdateInput>
    /**
     * Choose, which Catalogo to update.
     */
    where: CatalogoWhereUniqueInput
  }

  /**
   * Catalogo updateMany
   */
  export type CatalogoUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update Catalogos.
     */
    data: XOR<CatalogoUpdateManyMutationInput, CatalogoUncheckedUpdateManyInput>
    /**
     * Filter which Catalogos to update
     */
    where?: CatalogoWhereInput
    /**
     * Limit how many Catalogos to update.
     */
    limit?: number
  }

  /**
   * Catalogo updateManyAndReturn
   */
  export type CatalogoUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * The data used to update Catalogos.
     */
    data: XOR<CatalogoUpdateManyMutationInput, CatalogoUncheckedUpdateManyInput>
    /**
     * Filter which Catalogos to update
     */
    where?: CatalogoWhereInput
    /**
     * Limit how many Catalogos to update.
     */
    limit?: number
  }

  /**
   * Catalogo upsert
   */
  export type CatalogoUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: CatalogoInclude<ExtArgs> | null
    /**
     * The filter to search for the Catalogo to update in case it exists.
     */
    where: CatalogoWhereUniqueInput
    /**
     * In case the Catalogo found by the `where` argument doesn't exist, create a new Catalogo with this data.
     */
    create: XOR<CatalogoCreateInput, CatalogoUncheckedCreateInput>
    /**
     * In case the Catalogo was found with the provided `where` argument, update it with this data.
     */
    update: XOR<CatalogoUpdateInput, CatalogoUncheckedUpdateInput>
  }

  /**
   * Catalogo delete
   */
  export type CatalogoDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: CatalogoInclude<ExtArgs> | null
    /**
     * Filter which Catalogo to delete.
     */
    where: CatalogoWhereUniqueInput
  }

  /**
   * Catalogo deleteMany
   */
  export type CatalogoDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which Catalogos to delete
     */
    where?: CatalogoWhereInput
    /**
     * Limit how many Catalogos to delete.
     */
    limit?: number
  }

  /**
   * Catalogo.produtos
   */
  export type Catalogo$produtosArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoInclude<ExtArgs> | null
    where?: ProdutoWhereInput
    orderBy?: ProdutoOrderByWithRelationInput | ProdutoOrderByWithRelationInput[]
    cursor?: ProdutoWhereUniqueInput
    take?: number
    skip?: number
    distinct?: ProdutoScalarFieldEnum | ProdutoScalarFieldEnum[]
  }

  /**
   * Catalogo without action
   */
  export type CatalogoDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Catalogo
     */
    select?: CatalogoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Catalogo
     */
    omit?: CatalogoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: CatalogoInclude<ExtArgs> | null
  }


  /**
   * Model Produto
   */

  export type AggregateProduto = {
    _count: ProdutoCountAggregateOutputType | null
    _avg: ProdutoAvgAggregateOutputType | null
    _sum: ProdutoSumAggregateOutputType | null
    _min: ProdutoMinAggregateOutputType | null
    _max: ProdutoMaxAggregateOutputType | null
  }

  export type ProdutoAvgAggregateOutputType = {
    id: number | null
    preco: number | null
    catalogoId: number | null
  }

  export type ProdutoSumAggregateOutputType = {
    id: number | null
    preco: number | null
    catalogoId: number | null
  }

  export type ProdutoMinAggregateOutputType = {
    id: number | null
    nome: string | null
    preco: number | null
    catalogoId: number | null
  }

  export type ProdutoMaxAggregateOutputType = {
    id: number | null
    nome: string | null
    preco: number | null
    catalogoId: number | null
  }

  export type ProdutoCountAggregateOutputType = {
    id: number
    nome: number
    preco: number
    catalogoId: number
    _all: number
  }


  export type ProdutoAvgAggregateInputType = {
    id?: true
    preco?: true
    catalogoId?: true
  }

  export type ProdutoSumAggregateInputType = {
    id?: true
    preco?: true
    catalogoId?: true
  }

  export type ProdutoMinAggregateInputType = {
    id?: true
    nome?: true
    preco?: true
    catalogoId?: true
  }

  export type ProdutoMaxAggregateInputType = {
    id?: true
    nome?: true
    preco?: true
    catalogoId?: true
  }

  export type ProdutoCountAggregateInputType = {
    id?: true
    nome?: true
    preco?: true
    catalogoId?: true
    _all?: true
  }

  export type ProdutoAggregateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which Produto to aggregate.
     */
    where?: ProdutoWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Produtos to fetch.
     */
    orderBy?: ProdutoOrderByWithRelationInput | ProdutoOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the start position
     */
    cursor?: ProdutoWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Produtos from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Produtos.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Count returned Produtos
    **/
    _count?: true | ProdutoCountAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to average
    **/
    _avg?: ProdutoAvgAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to sum
    **/
    _sum?: ProdutoSumAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the minimum value
    **/
    _min?: ProdutoMinAggregateInputType
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/aggregations Aggregation Docs}
     * 
     * Select which fields to find the maximum value
    **/
    _max?: ProdutoMaxAggregateInputType
  }

  export type GetProdutoAggregateType<T extends ProdutoAggregateArgs> = {
        [P in keyof T & keyof AggregateProduto]: P extends '_count' | 'count'
      ? T[P] extends true
        ? number
        : GetScalarType<T[P], AggregateProduto[P]>
      : GetScalarType<T[P], AggregateProduto[P]>
  }




  export type ProdutoGroupByArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    where?: ProdutoWhereInput
    orderBy?: ProdutoOrderByWithAggregationInput | ProdutoOrderByWithAggregationInput[]
    by: ProdutoScalarFieldEnum[] | ProdutoScalarFieldEnum
    having?: ProdutoScalarWhereWithAggregatesInput
    take?: number
    skip?: number
    _count?: ProdutoCountAggregateInputType | true
    _avg?: ProdutoAvgAggregateInputType
    _sum?: ProdutoSumAggregateInputType
    _min?: ProdutoMinAggregateInputType
    _max?: ProdutoMaxAggregateInputType
  }

  export type ProdutoGroupByOutputType = {
    id: number
    nome: string
    preco: number
    catalogoId: number
    _count: ProdutoCountAggregateOutputType | null
    _avg: ProdutoAvgAggregateOutputType | null
    _sum: ProdutoSumAggregateOutputType | null
    _min: ProdutoMinAggregateOutputType | null
    _max: ProdutoMaxAggregateOutputType | null
  }

  type GetProdutoGroupByPayload<T extends ProdutoGroupByArgs> = Prisma.PrismaPromise<
    Array<
      PickEnumerable<ProdutoGroupByOutputType, T['by']> &
        {
          [P in ((keyof T) & (keyof ProdutoGroupByOutputType))]: P extends '_count'
            ? T[P] extends boolean
              ? number
              : GetScalarType<T[P], ProdutoGroupByOutputType[P]>
            : GetScalarType<T[P], ProdutoGroupByOutputType[P]>
        }
      >
    >


  export type ProdutoSelect<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    nome?: boolean
    preco?: boolean
    catalogoId?: boolean
    catalogo?: boolean | CatalogoDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["produto"]>

  export type ProdutoSelectCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    nome?: boolean
    preco?: boolean
    catalogoId?: boolean
    catalogo?: boolean | CatalogoDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["produto"]>

  export type ProdutoSelectUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetSelect<{
    id?: boolean
    nome?: boolean
    preco?: boolean
    catalogoId?: boolean
    catalogo?: boolean | CatalogoDefaultArgs<ExtArgs>
  }, ExtArgs["result"]["produto"]>

  export type ProdutoSelectScalar = {
    id?: boolean
    nome?: boolean
    preco?: boolean
    catalogoId?: boolean
  }

  export type ProdutoOmit<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = $Extensions.GetOmit<"id" | "nome" | "preco" | "catalogoId", ExtArgs["result"]["produto"]>
  export type ProdutoInclude<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    catalogo?: boolean | CatalogoDefaultArgs<ExtArgs>
  }
  export type ProdutoIncludeCreateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    catalogo?: boolean | CatalogoDefaultArgs<ExtArgs>
  }
  export type ProdutoIncludeUpdateManyAndReturn<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    catalogo?: boolean | CatalogoDefaultArgs<ExtArgs>
  }

  export type $ProdutoPayload<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    name: "Produto"
    objects: {
      catalogo: Prisma.$CatalogoPayload<ExtArgs>
    }
    scalars: $Extensions.GetPayloadResult<{
      id: number
      nome: string
      preco: number
      catalogoId: number
    }, ExtArgs["result"]["produto"]>
    composites: {}
  }

  type ProdutoGetPayload<S extends boolean | null | undefined | ProdutoDefaultArgs> = $Result.GetResult<Prisma.$ProdutoPayload, S>

  type ProdutoCountArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> =
    Omit<ProdutoFindManyArgs, 'select' | 'include' | 'distinct' | 'omit'> & {
      select?: ProdutoCountAggregateInputType | true
    }

  export interface ProdutoDelegate<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> {
    [K: symbol]: { types: Prisma.TypeMap<ExtArgs>['model']['Produto'], meta: { name: 'Produto' } }
    /**
     * Find zero or one Produto that matches the filter.
     * @param {ProdutoFindUniqueArgs} args - Arguments to find a Produto
     * @example
     * // Get one Produto
     * const produto = await prisma.produto.findUnique({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUnique<T extends ProdutoFindUniqueArgs>(args: SelectSubset<T, ProdutoFindUniqueArgs<ExtArgs>>): Prisma__ProdutoClient<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "findUnique", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find one Produto that matches the filter or throw an error with `error.code='P2025'`
     * if no matches were found.
     * @param {ProdutoFindUniqueOrThrowArgs} args - Arguments to find a Produto
     * @example
     * // Get one Produto
     * const produto = await prisma.produto.findUniqueOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findUniqueOrThrow<T extends ProdutoFindUniqueOrThrowArgs>(args: SelectSubset<T, ProdutoFindUniqueOrThrowArgs<ExtArgs>>): Prisma__ProdutoClient<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first Produto that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ProdutoFindFirstArgs} args - Arguments to find a Produto
     * @example
     * // Get one Produto
     * const produto = await prisma.produto.findFirst({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirst<T extends ProdutoFindFirstArgs>(args?: SelectSubset<T, ProdutoFindFirstArgs<ExtArgs>>): Prisma__ProdutoClient<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "findFirst", GlobalOmitOptions> | null, null, ExtArgs, GlobalOmitOptions>

    /**
     * Find the first Produto that matches the filter or
     * throw `PrismaKnownClientError` with `P2025` code if no matches were found.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ProdutoFindFirstOrThrowArgs} args - Arguments to find a Produto
     * @example
     * // Get one Produto
     * const produto = await prisma.produto.findFirstOrThrow({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     */
    findFirstOrThrow<T extends ProdutoFindFirstOrThrowArgs>(args?: SelectSubset<T, ProdutoFindFirstOrThrowArgs<ExtArgs>>): Prisma__ProdutoClient<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "findFirstOrThrow", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Find zero or more Produtos that matches the filter.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ProdutoFindManyArgs} args - Arguments to filter and select certain fields only.
     * @example
     * // Get all Produtos
     * const produtos = await prisma.produto.findMany()
     * 
     * // Get first 10 Produtos
     * const produtos = await prisma.produto.findMany({ take: 10 })
     * 
     * // Only select the `id`
     * const produtoWithIdOnly = await prisma.produto.findMany({ select: { id: true } })
     * 
     */
    findMany<T extends ProdutoFindManyArgs>(args?: SelectSubset<T, ProdutoFindManyArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "findMany", GlobalOmitOptions>>

    /**
     * Create a Produto.
     * @param {ProdutoCreateArgs} args - Arguments to create a Produto.
     * @example
     * // Create one Produto
     * const Produto = await prisma.produto.create({
     *   data: {
     *     // ... data to create a Produto
     *   }
     * })
     * 
     */
    create<T extends ProdutoCreateArgs>(args: SelectSubset<T, ProdutoCreateArgs<ExtArgs>>): Prisma__ProdutoClient<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "create", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Create many Produtos.
     * @param {ProdutoCreateManyArgs} args - Arguments to create many Produtos.
     * @example
     * // Create many Produtos
     * const produto = await prisma.produto.createMany({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     *     
     */
    createMany<T extends ProdutoCreateManyArgs>(args?: SelectSubset<T, ProdutoCreateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Create many Produtos and returns the data saved in the database.
     * @param {ProdutoCreateManyAndReturnArgs} args - Arguments to create many Produtos.
     * @example
     * // Create many Produtos
     * const produto = await prisma.produto.createManyAndReturn({
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Create many Produtos and only return the `id`
     * const produtoWithIdOnly = await prisma.produto.createManyAndReturn({
     *   select: { id: true },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    createManyAndReturn<T extends ProdutoCreateManyAndReturnArgs>(args?: SelectSubset<T, ProdutoCreateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "createManyAndReturn", GlobalOmitOptions>>

    /**
     * Delete a Produto.
     * @param {ProdutoDeleteArgs} args - Arguments to delete one Produto.
     * @example
     * // Delete one Produto
     * const Produto = await prisma.produto.delete({
     *   where: {
     *     // ... filter to delete one Produto
     *   }
     * })
     * 
     */
    delete<T extends ProdutoDeleteArgs>(args: SelectSubset<T, ProdutoDeleteArgs<ExtArgs>>): Prisma__ProdutoClient<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "delete", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Update one Produto.
     * @param {ProdutoUpdateArgs} args - Arguments to update one Produto.
     * @example
     * // Update one Produto
     * const produto = await prisma.produto.update({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    update<T extends ProdutoUpdateArgs>(args: SelectSubset<T, ProdutoUpdateArgs<ExtArgs>>): Prisma__ProdutoClient<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "update", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>

    /**
     * Delete zero or more Produtos.
     * @param {ProdutoDeleteManyArgs} args - Arguments to filter Produtos to delete.
     * @example
     * // Delete a few Produtos
     * const { count } = await prisma.produto.deleteMany({
     *   where: {
     *     // ... provide filter here
     *   }
     * })
     * 
     */
    deleteMany<T extends ProdutoDeleteManyArgs>(args?: SelectSubset<T, ProdutoDeleteManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more Produtos.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ProdutoUpdateManyArgs} args - Arguments to update one or more rows.
     * @example
     * // Update many Produtos
     * const produto = await prisma.produto.updateMany({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: {
     *     // ... provide data here
     *   }
     * })
     * 
     */
    updateMany<T extends ProdutoUpdateManyArgs>(args: SelectSubset<T, ProdutoUpdateManyArgs<ExtArgs>>): Prisma.PrismaPromise<BatchPayload>

    /**
     * Update zero or more Produtos and returns the data updated in the database.
     * @param {ProdutoUpdateManyAndReturnArgs} args - Arguments to update many Produtos.
     * @example
     * // Update many Produtos
     * const produto = await prisma.produto.updateManyAndReturn({
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * 
     * // Update zero or more Produtos and only return the `id`
     * const produtoWithIdOnly = await prisma.produto.updateManyAndReturn({
     *   select: { id: true },
     *   where: {
     *     // ... provide filter here
     *   },
     *   data: [
     *     // ... provide data here
     *   ]
     * })
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * 
     */
    updateManyAndReturn<T extends ProdutoUpdateManyAndReturnArgs>(args: SelectSubset<T, ProdutoUpdateManyAndReturnArgs<ExtArgs>>): Prisma.PrismaPromise<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "updateManyAndReturn", GlobalOmitOptions>>

    /**
     * Create or update one Produto.
     * @param {ProdutoUpsertArgs} args - Arguments to update or create a Produto.
     * @example
     * // Update or create a Produto
     * const produto = await prisma.produto.upsert({
     *   create: {
     *     // ... data to create a Produto
     *   },
     *   update: {
     *     // ... in case it already exists, update
     *   },
     *   where: {
     *     // ... the filter for the Produto we want to update
     *   }
     * })
     */
    upsert<T extends ProdutoUpsertArgs>(args: SelectSubset<T, ProdutoUpsertArgs<ExtArgs>>): Prisma__ProdutoClient<$Result.GetResult<Prisma.$ProdutoPayload<ExtArgs>, T, "upsert", GlobalOmitOptions>, never, ExtArgs, GlobalOmitOptions>


    /**
     * Count the number of Produtos.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ProdutoCountArgs} args - Arguments to filter Produtos to count.
     * @example
     * // Count the number of Produtos
     * const count = await prisma.produto.count({
     *   where: {
     *     // ... the filter for the Produtos we want to count
     *   }
     * })
    **/
    count<T extends ProdutoCountArgs>(
      args?: Subset<T, ProdutoCountArgs>,
    ): Prisma.PrismaPromise<
      T extends $Utils.Record<'select', any>
        ? T['select'] extends true
          ? number
          : GetScalarType<T['select'], ProdutoCountAggregateOutputType>
        : number
    >

    /**
     * Allows you to perform aggregations operations on a Produto.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ProdutoAggregateArgs} args - Select which aggregations you would like to apply and on what fields.
     * @example
     * // Ordered by age ascending
     * // Where email contains prisma.io
     * // Limited to the 10 users
     * const aggregations = await prisma.user.aggregate({
     *   _avg: {
     *     age: true,
     *   },
     *   where: {
     *     email: {
     *       contains: "prisma.io",
     *     },
     *   },
     *   orderBy: {
     *     age: "asc",
     *   },
     *   take: 10,
     * })
    **/
    aggregate<T extends ProdutoAggregateArgs>(args: Subset<T, ProdutoAggregateArgs>): Prisma.PrismaPromise<GetProdutoAggregateType<T>>

    /**
     * Group by Produto.
     * Note, that providing `undefined` is treated as the value not being there.
     * Read more here: https://pris.ly/d/null-undefined
     * @param {ProdutoGroupByArgs} args - Group by arguments.
     * @example
     * // Group by city, order by createdAt, get count
     * const result = await prisma.user.groupBy({
     *   by: ['city', 'createdAt'],
     *   orderBy: {
     *     createdAt: true
     *   },
     *   _count: {
     *     _all: true
     *   },
     * })
     * 
    **/
    groupBy<
      T extends ProdutoGroupByArgs,
      HasSelectOrTake extends Or<
        Extends<'skip', Keys<T>>,
        Extends<'take', Keys<T>>
      >,
      OrderByArg extends True extends HasSelectOrTake
        ? { orderBy: ProdutoGroupByArgs['orderBy'] }
        : { orderBy?: ProdutoGroupByArgs['orderBy'] },
      OrderFields extends ExcludeUnderscoreKeys<Keys<MaybeTupleToUnion<T['orderBy']>>>,
      ByFields extends MaybeTupleToUnion<T['by']>,
      ByValid extends Has<ByFields, OrderFields>,
      HavingFields extends GetHavingFields<T['having']>,
      HavingValid extends Has<ByFields, HavingFields>,
      ByEmpty extends T['by'] extends never[] ? True : False,
      InputErrors extends ByEmpty extends True
      ? `Error: "by" must not be empty.`
      : HavingValid extends False
      ? {
          [P in HavingFields]: P extends ByFields
            ? never
            : P extends string
            ? `Error: Field "${P}" used in "having" needs to be provided in "by".`
            : [
                Error,
                'Field ',
                P,
                ` in "having" needs to be provided in "by"`,
              ]
        }[HavingFields]
      : 'take' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "take", you also need to provide "orderBy"'
      : 'skip' extends Keys<T>
      ? 'orderBy' extends Keys<T>
        ? ByValid extends True
          ? {}
          : {
              [P in OrderFields]: P extends ByFields
                ? never
                : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
            }[OrderFields]
        : 'Error: If you provide "skip", you also need to provide "orderBy"'
      : ByValid extends True
      ? {}
      : {
          [P in OrderFields]: P extends ByFields
            ? never
            : `Error: Field "${P}" in "orderBy" needs to be provided in "by"`
        }[OrderFields]
    >(args: SubsetIntersection<T, ProdutoGroupByArgs, OrderByArg> & InputErrors): {} extends InputErrors ? GetProdutoGroupByPayload<T> : Prisma.PrismaPromise<InputErrors>
  /**
   * Fields of the Produto model
   */
  readonly fields: ProdutoFieldRefs;
  }

  /**
   * The delegate class that acts as a "Promise-like" for Produto.
   * Why is this prefixed with `Prisma__`?
   * Because we want to prevent naming conflicts as mentioned in
   * https://github.com/prisma/prisma-client-js/issues/707
   */
  export interface Prisma__ProdutoClient<T, Null = never, ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs, GlobalOmitOptions = {}> extends Prisma.PrismaPromise<T> {
    readonly [Symbol.toStringTag]: "PrismaPromise"
    catalogo<T extends CatalogoDefaultArgs<ExtArgs> = {}>(args?: Subset<T, CatalogoDefaultArgs<ExtArgs>>): Prisma__CatalogoClient<$Result.GetResult<Prisma.$CatalogoPayload<ExtArgs>, T, "findUniqueOrThrow", GlobalOmitOptions> | Null, Null, ExtArgs, GlobalOmitOptions>
    /**
     * Attaches callbacks for the resolution and/or rejection of the Promise.
     * @param onfulfilled The callback to execute when the Promise is resolved.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of which ever callback is executed.
     */
    then<TResult1 = T, TResult2 = never>(onfulfilled?: ((value: T) => TResult1 | PromiseLike<TResult1>) | undefined | null, onrejected?: ((reason: any) => TResult2 | PromiseLike<TResult2>) | undefined | null): $Utils.JsPromise<TResult1 | TResult2>
    /**
     * Attaches a callback for only the rejection of the Promise.
     * @param onrejected The callback to execute when the Promise is rejected.
     * @returns A Promise for the completion of the callback.
     */
    catch<TResult = never>(onrejected?: ((reason: any) => TResult | PromiseLike<TResult>) | undefined | null): $Utils.JsPromise<T | TResult>
    /**
     * Attaches a callback that is invoked when the Promise is settled (fulfilled or rejected). The
     * resolved value cannot be modified from the callback.
     * @param onfinally The callback to execute when the Promise is settled (fulfilled or rejected).
     * @returns A Promise for the completion of the callback.
     */
    finally(onfinally?: (() => void) | undefined | null): $Utils.JsPromise<T>
  }




  /**
   * Fields of the Produto model
   */
  interface ProdutoFieldRefs {
    readonly id: FieldRef<"Produto", 'Int'>
    readonly nome: FieldRef<"Produto", 'String'>
    readonly preco: FieldRef<"Produto", 'Float'>
    readonly catalogoId: FieldRef<"Produto", 'Int'>
  }
    

  // Custom InputTypes
  /**
   * Produto findUnique
   */
  export type ProdutoFindUniqueArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoInclude<ExtArgs> | null
    /**
     * Filter, which Produto to fetch.
     */
    where: ProdutoWhereUniqueInput
  }

  /**
   * Produto findUniqueOrThrow
   */
  export type ProdutoFindUniqueOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoInclude<ExtArgs> | null
    /**
     * Filter, which Produto to fetch.
     */
    where: ProdutoWhereUniqueInput
  }

  /**
   * Produto findFirst
   */
  export type ProdutoFindFirstArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoInclude<ExtArgs> | null
    /**
     * Filter, which Produto to fetch.
     */
    where?: ProdutoWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Produtos to fetch.
     */
    orderBy?: ProdutoOrderByWithRelationInput | ProdutoOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for Produtos.
     */
    cursor?: ProdutoWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Produtos from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Produtos.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of Produtos.
     */
    distinct?: ProdutoScalarFieldEnum | ProdutoScalarFieldEnum[]
  }

  /**
   * Produto findFirstOrThrow
   */
  export type ProdutoFindFirstOrThrowArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoInclude<ExtArgs> | null
    /**
     * Filter, which Produto to fetch.
     */
    where?: ProdutoWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Produtos to fetch.
     */
    orderBy?: ProdutoOrderByWithRelationInput | ProdutoOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for searching for Produtos.
     */
    cursor?: ProdutoWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Produtos from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Produtos.
     */
    skip?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/distinct Distinct Docs}
     * 
     * Filter by unique combinations of Produtos.
     */
    distinct?: ProdutoScalarFieldEnum | ProdutoScalarFieldEnum[]
  }

  /**
   * Produto findMany
   */
  export type ProdutoFindManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoInclude<ExtArgs> | null
    /**
     * Filter, which Produtos to fetch.
     */
    where?: ProdutoWhereInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/sorting Sorting Docs}
     * 
     * Determine the order of Produtos to fetch.
     */
    orderBy?: ProdutoOrderByWithRelationInput | ProdutoOrderByWithRelationInput[]
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination#cursor-based-pagination Cursor Docs}
     * 
     * Sets the position for listing Produtos.
     */
    cursor?: ProdutoWhereUniqueInput
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Take `±n` Produtos from the position of the cursor.
     */
    take?: number
    /**
     * {@link https://www.prisma.io/docs/concepts/components/prisma-client/pagination Pagination Docs}
     * 
     * Skip the first `n` Produtos.
     */
    skip?: number
    distinct?: ProdutoScalarFieldEnum | ProdutoScalarFieldEnum[]
  }

  /**
   * Produto create
   */
  export type ProdutoCreateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoInclude<ExtArgs> | null
    /**
     * The data needed to create a Produto.
     */
    data: XOR<ProdutoCreateInput, ProdutoUncheckedCreateInput>
  }

  /**
   * Produto createMany
   */
  export type ProdutoCreateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to create many Produtos.
     */
    data: ProdutoCreateManyInput | ProdutoCreateManyInput[]
    skipDuplicates?: boolean
  }

  /**
   * Produto createManyAndReturn
   */
  export type ProdutoCreateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelectCreateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * The data used to create many Produtos.
     */
    data: ProdutoCreateManyInput | ProdutoCreateManyInput[]
    skipDuplicates?: boolean
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoIncludeCreateManyAndReturn<ExtArgs> | null
  }

  /**
   * Produto update
   */
  export type ProdutoUpdateArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoInclude<ExtArgs> | null
    /**
     * The data needed to update a Produto.
     */
    data: XOR<ProdutoUpdateInput, ProdutoUncheckedUpdateInput>
    /**
     * Choose, which Produto to update.
     */
    where: ProdutoWhereUniqueInput
  }

  /**
   * Produto updateMany
   */
  export type ProdutoUpdateManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * The data used to update Produtos.
     */
    data: XOR<ProdutoUpdateManyMutationInput, ProdutoUncheckedUpdateManyInput>
    /**
     * Filter which Produtos to update
     */
    where?: ProdutoWhereInput
    /**
     * Limit how many Produtos to update.
     */
    limit?: number
  }

  /**
   * Produto updateManyAndReturn
   */
  export type ProdutoUpdateManyAndReturnArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelectUpdateManyAndReturn<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * The data used to update Produtos.
     */
    data: XOR<ProdutoUpdateManyMutationInput, ProdutoUncheckedUpdateManyInput>
    /**
     * Filter which Produtos to update
     */
    where?: ProdutoWhereInput
    /**
     * Limit how many Produtos to update.
     */
    limit?: number
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoIncludeUpdateManyAndReturn<ExtArgs> | null
  }

  /**
   * Produto upsert
   */
  export type ProdutoUpsertArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoInclude<ExtArgs> | null
    /**
     * The filter to search for the Produto to update in case it exists.
     */
    where: ProdutoWhereUniqueInput
    /**
     * In case the Produto found by the `where` argument doesn't exist, create a new Produto with this data.
     */
    create: XOR<ProdutoCreateInput, ProdutoUncheckedCreateInput>
    /**
     * In case the Produto was found with the provided `where` argument, update it with this data.
     */
    update: XOR<ProdutoUpdateInput, ProdutoUncheckedUpdateInput>
  }

  /**
   * Produto delete
   */
  export type ProdutoDeleteArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoInclude<ExtArgs> | null
    /**
     * Filter which Produto to delete.
     */
    where: ProdutoWhereUniqueInput
  }

  /**
   * Produto deleteMany
   */
  export type ProdutoDeleteManyArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Filter which Produtos to delete
     */
    where?: ProdutoWhereInput
    /**
     * Limit how many Produtos to delete.
     */
    limit?: number
  }

  /**
   * Produto without action
   */
  export type ProdutoDefaultArgs<ExtArgs extends $Extensions.InternalArgs = $Extensions.DefaultArgs> = {
    /**
     * Select specific fields to fetch from the Produto
     */
    select?: ProdutoSelect<ExtArgs> | null
    /**
     * Omit specific fields from the Produto
     */
    omit?: ProdutoOmit<ExtArgs> | null
    /**
     * Choose, which related nodes to fetch as well
     */
    include?: ProdutoInclude<ExtArgs> | null
  }


  /**
   * Enums
   */

  export const TransactionIsolationLevel: {
    ReadUncommitted: 'ReadUncommitted',
    ReadCommitted: 'ReadCommitted',
    RepeatableRead: 'RepeatableRead',
    Serializable: 'Serializable'
  };

  export type TransactionIsolationLevel = (typeof TransactionIsolationLevel)[keyof typeof TransactionIsolationLevel]


  export const CatalogoScalarFieldEnum: {
    id: 'id',
    nome: 'nome'
  };

  export type CatalogoScalarFieldEnum = (typeof CatalogoScalarFieldEnum)[keyof typeof CatalogoScalarFieldEnum]


  export const ProdutoScalarFieldEnum: {
    id: 'id',
    nome: 'nome',
    preco: 'preco',
    catalogoId: 'catalogoId'
  };

  export type ProdutoScalarFieldEnum = (typeof ProdutoScalarFieldEnum)[keyof typeof ProdutoScalarFieldEnum]


  export const SortOrder: {
    asc: 'asc',
    desc: 'desc'
  };

  export type SortOrder = (typeof SortOrder)[keyof typeof SortOrder]


  export const QueryMode: {
    default: 'default',
    insensitive: 'insensitive'
  };

  export type QueryMode = (typeof QueryMode)[keyof typeof QueryMode]


  /**
   * Field references
   */


  /**
   * Reference to a field of type 'Int'
   */
  export type IntFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'Int'>
    


  /**
   * Reference to a field of type 'Int[]'
   */
  export type ListIntFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'Int[]'>
    


  /**
   * Reference to a field of type 'String'
   */
  export type StringFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'String'>
    


  /**
   * Reference to a field of type 'String[]'
   */
  export type ListStringFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'String[]'>
    


  /**
   * Reference to a field of type 'Float'
   */
  export type FloatFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'Float'>
    


  /**
   * Reference to a field of type 'Float[]'
   */
  export type ListFloatFieldRefInput<$PrismaModel> = FieldRefInputType<$PrismaModel, 'Float[]'>
    
  /**
   * Deep Input Types
   */


  export type CatalogoWhereInput = {
    AND?: CatalogoWhereInput | CatalogoWhereInput[]
    OR?: CatalogoWhereInput[]
    NOT?: CatalogoWhereInput | CatalogoWhereInput[]
    id?: IntFilter<"Catalogo"> | number
    nome?: StringFilter<"Catalogo"> | string
    produtos?: ProdutoListRelationFilter
  }

  export type CatalogoOrderByWithRelationInput = {
    id?: SortOrder
    nome?: SortOrder
    produtos?: ProdutoOrderByRelationAggregateInput
  }

  export type CatalogoWhereUniqueInput = Prisma.AtLeast<{
    id?: number
    AND?: CatalogoWhereInput | CatalogoWhereInput[]
    OR?: CatalogoWhereInput[]
    NOT?: CatalogoWhereInput | CatalogoWhereInput[]
    nome?: StringFilter<"Catalogo"> | string
    produtos?: ProdutoListRelationFilter
  }, "id">

  export type CatalogoOrderByWithAggregationInput = {
    id?: SortOrder
    nome?: SortOrder
    _count?: CatalogoCountOrderByAggregateInput
    _avg?: CatalogoAvgOrderByAggregateInput
    _max?: CatalogoMaxOrderByAggregateInput
    _min?: CatalogoMinOrderByAggregateInput
    _sum?: CatalogoSumOrderByAggregateInput
  }

  export type CatalogoScalarWhereWithAggregatesInput = {
    AND?: CatalogoScalarWhereWithAggregatesInput | CatalogoScalarWhereWithAggregatesInput[]
    OR?: CatalogoScalarWhereWithAggregatesInput[]
    NOT?: CatalogoScalarWhereWithAggregatesInput | CatalogoScalarWhereWithAggregatesInput[]
    id?: IntWithAggregatesFilter<"Catalogo"> | number
    nome?: StringWithAggregatesFilter<"Catalogo"> | string
  }

  export type ProdutoWhereInput = {
    AND?: ProdutoWhereInput | ProdutoWhereInput[]
    OR?: ProdutoWhereInput[]
    NOT?: ProdutoWhereInput | ProdutoWhereInput[]
    id?: IntFilter<"Produto"> | number
    nome?: StringFilter<"Produto"> | string
    preco?: FloatFilter<"Produto"> | number
    catalogoId?: IntFilter<"Produto"> | number
    catalogo?: XOR<CatalogoScalarRelationFilter, CatalogoWhereInput>
  }

  export type ProdutoOrderByWithRelationInput = {
    id?: SortOrder
    nome?: SortOrder
    preco?: SortOrder
    catalogoId?: SortOrder
    catalogo?: CatalogoOrderByWithRelationInput
  }

  export type ProdutoWhereUniqueInput = Prisma.AtLeast<{
    id?: number
    AND?: ProdutoWhereInput | ProdutoWhereInput[]
    OR?: ProdutoWhereInput[]
    NOT?: ProdutoWhereInput | ProdutoWhereInput[]
    nome?: StringFilter<"Produto"> | string
    preco?: FloatFilter<"Produto"> | number
    catalogoId?: IntFilter<"Produto"> | number
    catalogo?: XOR<CatalogoScalarRelationFilter, CatalogoWhereInput>
  }, "id">

  export type ProdutoOrderByWithAggregationInput = {
    id?: SortOrder
    nome?: SortOrder
    preco?: SortOrder
    catalogoId?: SortOrder
    _count?: ProdutoCountOrderByAggregateInput
    _avg?: ProdutoAvgOrderByAggregateInput
    _max?: ProdutoMaxOrderByAggregateInput
    _min?: ProdutoMinOrderByAggregateInput
    _sum?: ProdutoSumOrderByAggregateInput
  }

  export type ProdutoScalarWhereWithAggregatesInput = {
    AND?: ProdutoScalarWhereWithAggregatesInput | ProdutoScalarWhereWithAggregatesInput[]
    OR?: ProdutoScalarWhereWithAggregatesInput[]
    NOT?: ProdutoScalarWhereWithAggregatesInput | ProdutoScalarWhereWithAggregatesInput[]
    id?: IntWithAggregatesFilter<"Produto"> | number
    nome?: StringWithAggregatesFilter<"Produto"> | string
    preco?: FloatWithAggregatesFilter<"Produto"> | number
    catalogoId?: IntWithAggregatesFilter<"Produto"> | number
  }

  export type CatalogoCreateInput = {
    nome: string
    produtos?: ProdutoCreateNestedManyWithoutCatalogoInput
  }

  export type CatalogoUncheckedCreateInput = {
    id?: number
    nome: string
    produtos?: ProdutoUncheckedCreateNestedManyWithoutCatalogoInput
  }

  export type CatalogoUpdateInput = {
    nome?: StringFieldUpdateOperationsInput | string
    produtos?: ProdutoUpdateManyWithoutCatalogoNestedInput
  }

  export type CatalogoUncheckedUpdateInput = {
    id?: IntFieldUpdateOperationsInput | number
    nome?: StringFieldUpdateOperationsInput | string
    produtos?: ProdutoUncheckedUpdateManyWithoutCatalogoNestedInput
  }

  export type CatalogoCreateManyInput = {
    id?: number
    nome: string
  }

  export type CatalogoUpdateManyMutationInput = {
    nome?: StringFieldUpdateOperationsInput | string
  }

  export type CatalogoUncheckedUpdateManyInput = {
    id?: IntFieldUpdateOperationsInput | number
    nome?: StringFieldUpdateOperationsInput | string
  }

  export type ProdutoCreateInput = {
    nome: string
    preco: number
    catalogo: CatalogoCreateNestedOneWithoutProdutosInput
  }

  export type ProdutoUncheckedCreateInput = {
    id?: number
    nome: string
    preco: number
    catalogoId: number
  }

  export type ProdutoUpdateInput = {
    nome?: StringFieldUpdateOperationsInput | string
    preco?: FloatFieldUpdateOperationsInput | number
    catalogo?: CatalogoUpdateOneRequiredWithoutProdutosNestedInput
  }

  export type ProdutoUncheckedUpdateInput = {
    id?: IntFieldUpdateOperationsInput | number
    nome?: StringFieldUpdateOperationsInput | string
    preco?: FloatFieldUpdateOperationsInput | number
    catalogoId?: IntFieldUpdateOperationsInput | number
  }

  export type ProdutoCreateManyInput = {
    id?: number
    nome: string
    preco: number
    catalogoId: number
  }

  export type ProdutoUpdateManyMutationInput = {
    nome?: StringFieldUpdateOperationsInput | string
    preco?: FloatFieldUpdateOperationsInput | number
  }

  export type ProdutoUncheckedUpdateManyInput = {
    id?: IntFieldUpdateOperationsInput | number
    nome?: StringFieldUpdateOperationsInput | string
    preco?: FloatFieldUpdateOperationsInput | number
    catalogoId?: IntFieldUpdateOperationsInput | number
  }

  export type IntFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel>
    in?: number[] | ListIntFieldRefInput<$PrismaModel>
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel>
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntFilter<$PrismaModel> | number
  }

  export type StringFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel>
    in?: string[] | ListStringFieldRefInput<$PrismaModel>
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel>
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    mode?: QueryMode
    not?: NestedStringFilter<$PrismaModel> | string
  }

  export type ProdutoListRelationFilter = {
    every?: ProdutoWhereInput
    some?: ProdutoWhereInput
    none?: ProdutoWhereInput
  }

  export type ProdutoOrderByRelationAggregateInput = {
    _count?: SortOrder
  }

  export type CatalogoCountOrderByAggregateInput = {
    id?: SortOrder
    nome?: SortOrder
  }

  export type CatalogoAvgOrderByAggregateInput = {
    id?: SortOrder
  }

  export type CatalogoMaxOrderByAggregateInput = {
    id?: SortOrder
    nome?: SortOrder
  }

  export type CatalogoMinOrderByAggregateInput = {
    id?: SortOrder
    nome?: SortOrder
  }

  export type CatalogoSumOrderByAggregateInput = {
    id?: SortOrder
  }

  export type IntWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel>
    in?: number[] | ListIntFieldRefInput<$PrismaModel>
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel>
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntWithAggregatesFilter<$PrismaModel> | number
    _count?: NestedIntFilter<$PrismaModel>
    _avg?: NestedFloatFilter<$PrismaModel>
    _sum?: NestedIntFilter<$PrismaModel>
    _min?: NestedIntFilter<$PrismaModel>
    _max?: NestedIntFilter<$PrismaModel>
  }

  export type StringWithAggregatesFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel>
    in?: string[] | ListStringFieldRefInput<$PrismaModel>
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel>
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    mode?: QueryMode
    not?: NestedStringWithAggregatesFilter<$PrismaModel> | string
    _count?: NestedIntFilter<$PrismaModel>
    _min?: NestedStringFilter<$PrismaModel>
    _max?: NestedStringFilter<$PrismaModel>
  }

  export type FloatFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel>
    in?: number[] | ListFloatFieldRefInput<$PrismaModel>
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel>
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatFilter<$PrismaModel> | number
  }

  export type CatalogoScalarRelationFilter = {
    is?: CatalogoWhereInput
    isNot?: CatalogoWhereInput
  }

  export type ProdutoCountOrderByAggregateInput = {
    id?: SortOrder
    nome?: SortOrder
    preco?: SortOrder
    catalogoId?: SortOrder
  }

  export type ProdutoAvgOrderByAggregateInput = {
    id?: SortOrder
    preco?: SortOrder
    catalogoId?: SortOrder
  }

  export type ProdutoMaxOrderByAggregateInput = {
    id?: SortOrder
    nome?: SortOrder
    preco?: SortOrder
    catalogoId?: SortOrder
  }

  export type ProdutoMinOrderByAggregateInput = {
    id?: SortOrder
    nome?: SortOrder
    preco?: SortOrder
    catalogoId?: SortOrder
  }

  export type ProdutoSumOrderByAggregateInput = {
    id?: SortOrder
    preco?: SortOrder
    catalogoId?: SortOrder
  }

  export type FloatWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel>
    in?: number[] | ListFloatFieldRefInput<$PrismaModel>
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel>
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatWithAggregatesFilter<$PrismaModel> | number
    _count?: NestedIntFilter<$PrismaModel>
    _avg?: NestedFloatFilter<$PrismaModel>
    _sum?: NestedFloatFilter<$PrismaModel>
    _min?: NestedFloatFilter<$PrismaModel>
    _max?: NestedFloatFilter<$PrismaModel>
  }

  export type ProdutoCreateNestedManyWithoutCatalogoInput = {
    create?: XOR<ProdutoCreateWithoutCatalogoInput, ProdutoUncheckedCreateWithoutCatalogoInput> | ProdutoCreateWithoutCatalogoInput[] | ProdutoUncheckedCreateWithoutCatalogoInput[]
    connectOrCreate?: ProdutoCreateOrConnectWithoutCatalogoInput | ProdutoCreateOrConnectWithoutCatalogoInput[]
    createMany?: ProdutoCreateManyCatalogoInputEnvelope
    connect?: ProdutoWhereUniqueInput | ProdutoWhereUniqueInput[]
  }

  export type ProdutoUncheckedCreateNestedManyWithoutCatalogoInput = {
    create?: XOR<ProdutoCreateWithoutCatalogoInput, ProdutoUncheckedCreateWithoutCatalogoInput> | ProdutoCreateWithoutCatalogoInput[] | ProdutoUncheckedCreateWithoutCatalogoInput[]
    connectOrCreate?: ProdutoCreateOrConnectWithoutCatalogoInput | ProdutoCreateOrConnectWithoutCatalogoInput[]
    createMany?: ProdutoCreateManyCatalogoInputEnvelope
    connect?: ProdutoWhereUniqueInput | ProdutoWhereUniqueInput[]
  }

  export type StringFieldUpdateOperationsInput = {
    set?: string
  }

  export type ProdutoUpdateManyWithoutCatalogoNestedInput = {
    create?: XOR<ProdutoCreateWithoutCatalogoInput, ProdutoUncheckedCreateWithoutCatalogoInput> | ProdutoCreateWithoutCatalogoInput[] | ProdutoUncheckedCreateWithoutCatalogoInput[]
    connectOrCreate?: ProdutoCreateOrConnectWithoutCatalogoInput | ProdutoCreateOrConnectWithoutCatalogoInput[]
    upsert?: ProdutoUpsertWithWhereUniqueWithoutCatalogoInput | ProdutoUpsertWithWhereUniqueWithoutCatalogoInput[]
    createMany?: ProdutoCreateManyCatalogoInputEnvelope
    set?: ProdutoWhereUniqueInput | ProdutoWhereUniqueInput[]
    disconnect?: ProdutoWhereUniqueInput | ProdutoWhereUniqueInput[]
    delete?: ProdutoWhereUniqueInput | ProdutoWhereUniqueInput[]
    connect?: ProdutoWhereUniqueInput | ProdutoWhereUniqueInput[]
    update?: ProdutoUpdateWithWhereUniqueWithoutCatalogoInput | ProdutoUpdateWithWhereUniqueWithoutCatalogoInput[]
    updateMany?: ProdutoUpdateManyWithWhereWithoutCatalogoInput | ProdutoUpdateManyWithWhereWithoutCatalogoInput[]
    deleteMany?: ProdutoScalarWhereInput | ProdutoScalarWhereInput[]
  }

  export type IntFieldUpdateOperationsInput = {
    set?: number
    increment?: number
    decrement?: number
    multiply?: number
    divide?: number
  }

  export type ProdutoUncheckedUpdateManyWithoutCatalogoNestedInput = {
    create?: XOR<ProdutoCreateWithoutCatalogoInput, ProdutoUncheckedCreateWithoutCatalogoInput> | ProdutoCreateWithoutCatalogoInput[] | ProdutoUncheckedCreateWithoutCatalogoInput[]
    connectOrCreate?: ProdutoCreateOrConnectWithoutCatalogoInput | ProdutoCreateOrConnectWithoutCatalogoInput[]
    upsert?: ProdutoUpsertWithWhereUniqueWithoutCatalogoInput | ProdutoUpsertWithWhereUniqueWithoutCatalogoInput[]
    createMany?: ProdutoCreateManyCatalogoInputEnvelope
    set?: ProdutoWhereUniqueInput | ProdutoWhereUniqueInput[]
    disconnect?: ProdutoWhereUniqueInput | ProdutoWhereUniqueInput[]
    delete?: ProdutoWhereUniqueInput | ProdutoWhereUniqueInput[]
    connect?: ProdutoWhereUniqueInput | ProdutoWhereUniqueInput[]
    update?: ProdutoUpdateWithWhereUniqueWithoutCatalogoInput | ProdutoUpdateWithWhereUniqueWithoutCatalogoInput[]
    updateMany?: ProdutoUpdateManyWithWhereWithoutCatalogoInput | ProdutoUpdateManyWithWhereWithoutCatalogoInput[]
    deleteMany?: ProdutoScalarWhereInput | ProdutoScalarWhereInput[]
  }

  export type CatalogoCreateNestedOneWithoutProdutosInput = {
    create?: XOR<CatalogoCreateWithoutProdutosInput, CatalogoUncheckedCreateWithoutProdutosInput>
    connectOrCreate?: CatalogoCreateOrConnectWithoutProdutosInput
    connect?: CatalogoWhereUniqueInput
  }

  export type FloatFieldUpdateOperationsInput = {
    set?: number
    increment?: number
    decrement?: number
    multiply?: number
    divide?: number
  }

  export type CatalogoUpdateOneRequiredWithoutProdutosNestedInput = {
    create?: XOR<CatalogoCreateWithoutProdutosInput, CatalogoUncheckedCreateWithoutProdutosInput>
    connectOrCreate?: CatalogoCreateOrConnectWithoutProdutosInput
    upsert?: CatalogoUpsertWithoutProdutosInput
    connect?: CatalogoWhereUniqueInput
    update?: XOR<XOR<CatalogoUpdateToOneWithWhereWithoutProdutosInput, CatalogoUpdateWithoutProdutosInput>, CatalogoUncheckedUpdateWithoutProdutosInput>
  }

  export type NestedIntFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel>
    in?: number[] | ListIntFieldRefInput<$PrismaModel>
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel>
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntFilter<$PrismaModel> | number
  }

  export type NestedStringFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel>
    in?: string[] | ListStringFieldRefInput<$PrismaModel>
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel>
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    not?: NestedStringFilter<$PrismaModel> | string
  }

  export type NestedIntWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | IntFieldRefInput<$PrismaModel>
    in?: number[] | ListIntFieldRefInput<$PrismaModel>
    notIn?: number[] | ListIntFieldRefInput<$PrismaModel>
    lt?: number | IntFieldRefInput<$PrismaModel>
    lte?: number | IntFieldRefInput<$PrismaModel>
    gt?: number | IntFieldRefInput<$PrismaModel>
    gte?: number | IntFieldRefInput<$PrismaModel>
    not?: NestedIntWithAggregatesFilter<$PrismaModel> | number
    _count?: NestedIntFilter<$PrismaModel>
    _avg?: NestedFloatFilter<$PrismaModel>
    _sum?: NestedIntFilter<$PrismaModel>
    _min?: NestedIntFilter<$PrismaModel>
    _max?: NestedIntFilter<$PrismaModel>
  }

  export type NestedFloatFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel>
    in?: number[] | ListFloatFieldRefInput<$PrismaModel>
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel>
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatFilter<$PrismaModel> | number
  }

  export type NestedStringWithAggregatesFilter<$PrismaModel = never> = {
    equals?: string | StringFieldRefInput<$PrismaModel>
    in?: string[] | ListStringFieldRefInput<$PrismaModel>
    notIn?: string[] | ListStringFieldRefInput<$PrismaModel>
    lt?: string | StringFieldRefInput<$PrismaModel>
    lte?: string | StringFieldRefInput<$PrismaModel>
    gt?: string | StringFieldRefInput<$PrismaModel>
    gte?: string | StringFieldRefInput<$PrismaModel>
    contains?: string | StringFieldRefInput<$PrismaModel>
    startsWith?: string | StringFieldRefInput<$PrismaModel>
    endsWith?: string | StringFieldRefInput<$PrismaModel>
    not?: NestedStringWithAggregatesFilter<$PrismaModel> | string
    _count?: NestedIntFilter<$PrismaModel>
    _min?: NestedStringFilter<$PrismaModel>
    _max?: NestedStringFilter<$PrismaModel>
  }

  export type NestedFloatWithAggregatesFilter<$PrismaModel = never> = {
    equals?: number | FloatFieldRefInput<$PrismaModel>
    in?: number[] | ListFloatFieldRefInput<$PrismaModel>
    notIn?: number[] | ListFloatFieldRefInput<$PrismaModel>
    lt?: number | FloatFieldRefInput<$PrismaModel>
    lte?: number | FloatFieldRefInput<$PrismaModel>
    gt?: number | FloatFieldRefInput<$PrismaModel>
    gte?: number | FloatFieldRefInput<$PrismaModel>
    not?: NestedFloatWithAggregatesFilter<$PrismaModel> | number
    _count?: NestedIntFilter<$PrismaModel>
    _avg?: NestedFloatFilter<$PrismaModel>
    _sum?: NestedFloatFilter<$PrismaModel>
    _min?: NestedFloatFilter<$PrismaModel>
    _max?: NestedFloatFilter<$PrismaModel>
  }

  export type ProdutoCreateWithoutCatalogoInput = {
    nome: string
    preco: number
  }

  export type ProdutoUncheckedCreateWithoutCatalogoInput = {
    id?: number
    nome: string
    preco: number
  }

  export type ProdutoCreateOrConnectWithoutCatalogoInput = {
    where: ProdutoWhereUniqueInput
    create: XOR<ProdutoCreateWithoutCatalogoInput, ProdutoUncheckedCreateWithoutCatalogoInput>
  }

  export type ProdutoCreateManyCatalogoInputEnvelope = {
    data: ProdutoCreateManyCatalogoInput | ProdutoCreateManyCatalogoInput[]
    skipDuplicates?: boolean
  }

  export type ProdutoUpsertWithWhereUniqueWithoutCatalogoInput = {
    where: ProdutoWhereUniqueInput
    update: XOR<ProdutoUpdateWithoutCatalogoInput, ProdutoUncheckedUpdateWithoutCatalogoInput>
    create: XOR<ProdutoCreateWithoutCatalogoInput, ProdutoUncheckedCreateWithoutCatalogoInput>
  }

  export type ProdutoUpdateWithWhereUniqueWithoutCatalogoInput = {
    where: ProdutoWhereUniqueInput
    data: XOR<ProdutoUpdateWithoutCatalogoInput, ProdutoUncheckedUpdateWithoutCatalogoInput>
  }

  export type ProdutoUpdateManyWithWhereWithoutCatalogoInput = {
    where: ProdutoScalarWhereInput
    data: XOR<ProdutoUpdateManyMutationInput, ProdutoUncheckedUpdateManyWithoutCatalogoInput>
  }

  export type ProdutoScalarWhereInput = {
    AND?: ProdutoScalarWhereInput | ProdutoScalarWhereInput[]
    OR?: ProdutoScalarWhereInput[]
    NOT?: ProdutoScalarWhereInput | ProdutoScalarWhereInput[]
    id?: IntFilter<"Produto"> | number
    nome?: StringFilter<"Produto"> | string
    preco?: FloatFilter<"Produto"> | number
    catalogoId?: IntFilter<"Produto"> | number
  }

  export type CatalogoCreateWithoutProdutosInput = {
    nome: string
  }

  export type CatalogoUncheckedCreateWithoutProdutosInput = {
    id?: number
    nome: string
  }

  export type CatalogoCreateOrConnectWithoutProdutosInput = {
    where: CatalogoWhereUniqueInput
    create: XOR<CatalogoCreateWithoutProdutosInput, CatalogoUncheckedCreateWithoutProdutosInput>
  }

  export type CatalogoUpsertWithoutProdutosInput = {
    update: XOR<CatalogoUpdateWithoutProdutosInput, CatalogoUncheckedUpdateWithoutProdutosInput>
    create: XOR<CatalogoCreateWithoutProdutosInput, CatalogoUncheckedCreateWithoutProdutosInput>
    where?: CatalogoWhereInput
  }

  export type CatalogoUpdateToOneWithWhereWithoutProdutosInput = {
    where?: CatalogoWhereInput
    data: XOR<CatalogoUpdateWithoutProdutosInput, CatalogoUncheckedUpdateWithoutProdutosInput>
  }

  export type CatalogoUpdateWithoutProdutosInput = {
    nome?: StringFieldUpdateOperationsInput | string
  }

  export type CatalogoUncheckedUpdateWithoutProdutosInput = {
    id?: IntFieldUpdateOperationsInput | number
    nome?: StringFieldUpdateOperationsInput | string
  }

  export type ProdutoCreateManyCatalogoInput = {
    id?: number
    nome: string
    preco: number
  }

  export type ProdutoUpdateWithoutCatalogoInput = {
    nome?: StringFieldUpdateOperationsInput | string
    preco?: FloatFieldUpdateOperationsInput | number
  }

  export type ProdutoUncheckedUpdateWithoutCatalogoInput = {
    id?: IntFieldUpdateOperationsInput | number
    nome?: StringFieldUpdateOperationsInput | string
    preco?: FloatFieldUpdateOperationsInput | number
  }

  export type ProdutoUncheckedUpdateManyWithoutCatalogoInput = {
    id?: IntFieldUpdateOperationsInput | number
    nome?: StringFieldUpdateOperationsInput | string
    preco?: FloatFieldUpdateOperationsInput | number
  }



  /**
   * Batch Payload for updateMany & deleteMany & createMany
   */

  export type BatchPayload = {
    count: number
  }

  /**
   * DMMF
   */
  export const dmmf: runtime.BaseDMMF
}