.class public Lcom/sun/mail/imap/protocol/ID;
.super Ljava/lang/Object;
.source "ID.java"


# instance fields
.field private serverParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    .line 70
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 71
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    .line 72
    .local v0, "c":I
    const/16 v1, 0x4e

    if-eq v0, v1, :cond_6

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 75
    :cond_0
    const/16 v1, 0x28

    if-ne v0, v1, :cond_5

    .line 78
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    .line 80
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readStringList()[Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "v":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 82
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    aget-object v3, v1, v2

    .line 84
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 86
    add-int/lit8 v4, v2, 0x1

    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 89
    add-int/lit8 v4, v2, 0x1

    aget-object v4, v1, v4

    .line 90
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 87
    .restart local v3    # "name":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/sun/mail/iap/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ID field without value: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_3
    new-instance v4, Lcom/sun/mail/iap/ProtocolException;

    const-string v5, "ID field name null"

    invoke-direct {v4, v5}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    .line 94
    return-void

    .line 76
    .end local v1    # "v":[Ljava/lang/String;
    :cond_5
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Missing \'(\' at start of ID"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_6
    :goto_2
    return-void
.end method

.method static getArgumentList(Ljava/util/Map;)Lcom/sun/mail/iap/Argument;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sun/mail/iap/Argument;"
        }
    .end annotation

    .line 107
    .local p0, "clientParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/sun/mail/iap/Argument;

    invoke-direct {v0}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 108
    .local v0, "arg":Lcom/sun/mail/iap/Argument;
    if-nez p0, :cond_0

    .line 109
    const-string v1, "NIL"

    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeAtom(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 110
    return-object v0

    .line 112
    :cond_0
    new-instance v1, Lcom/sun/mail/iap/Argument;

    invoke-direct {v1}, Lcom/sun/mail/iap/Argument;-><init>()V

    .line 114
    .local v1, "list":Lcom/sun/mail/iap/Argument;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    invoke-virtual {v0, v1}, Lcom/sun/mail/iap/Argument;->writeArgument(Lcom/sun/mail/iap/Argument;)Lcom/sun/mail/iap/Argument;

    .line 119
    return-object v0

    .line 114
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 115
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sun/mail/iap/Argument;->writeNString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    .line 116
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sun/mail/iap/Argument;->writeNString(Ljava/lang/String;)Lcom/sun/mail/iap/Argument;

    goto :goto_0
.end method


# virtual methods
.method getServerParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/ID;->serverParams:Ljava/util/Map;

    return-object v0
.end method
