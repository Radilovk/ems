.class public Lcom/isaigu/gymapp/utils/DateNullAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "DateNullAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field private final enUsFormat:Ljava/text/DateFormat;

.field private final localFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/isaigu/gymapp/utils/DateNullAdapter$1;

    invoke-direct {v0}, Lcom/isaigu/gymapp/utils/DateNullAdapter$1;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/utils/DateNullAdapter;->FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 32
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 33
    const/4 v1, 0x2

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/utils/DateNullAdapter;->enUsFormat:Ljava/text/DateFormat;

    .line 34
    nop

    .line 35
    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/utils/DateNullAdapter;->localFormat:Ljava/text/DateFormat;

    .line 34
    return-void
.end method

.method private declared-synchronized deserializeToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/DateNullAdapter;->localFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 52
    .end local p0    # "this":Lcom/isaigu/gymapp/utils/DateNullAdapter;
    .end local p1    # "json":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 54
    .restart local p1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/DateNullAdapter;->enUsFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 58
    :catch_1
    move-exception v0

    .line 61
    :try_start_2
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lcom/google/gson/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 62
    :catch_2
    move-exception v0

    .line 63
    .local v0, "e":Ljava/text/ParseException;
    :try_start_3
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, p1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    .end local v0    # "e":Ljava/text/ParseException;
    .end local p1    # "json":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/utils/DateNullAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Date;
    .locals 3
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 41
    return-object v2

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "jsonStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    return-object v2

    .line 47
    :cond_1
    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/utils/DateNullAdapter;->deserializeToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/utils/DateNullAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Date;)V
    .locals 1
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 68
    if-nez p2, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 72
    .end local p0    # "this":Lcom/isaigu/gymapp/utils/DateNullAdapter;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/utils/DateNullAdapter;->enUsFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "dateFormatAsString":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    .line 67
    .end local v0    # "dateFormatAsString":Ljava/lang/String;
    .end local p1    # "out":Lcom/google/gson/stream/JsonWriter;
    .end local p2    # "value":Ljava/util/Date;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
