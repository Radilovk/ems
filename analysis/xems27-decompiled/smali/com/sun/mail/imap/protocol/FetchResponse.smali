.class public Lcom/sun/mail/imap/protocol/FetchResponse;
.super Lcom/sun/mail/imap/protocol/IMAPResponse;
.source "FetchResponse.java"


# static fields
.field private static final HEADER:[C

.field private static final TEXT:[C


# instance fields
.field private extensionItems:Ljava/util/Map;

.field private final fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

.field private items:[Lcom/sun/mail/imap/protocol/Item;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    .line 198
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2es
        0x48s
        0x45s
        0x41s
        0x44s
        0x45s
        0x52s
    .end array-data

    nop

    :array_1
    .array-data 2
        0x2es
        0x54s
        0x45s
        0x58s
        0x54s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .locals 1
    .param p1, "p"    # Lcom/sun/mail/iap/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    .line 75
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .locals 1
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/IMAPResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;[Lcom/sun/mail/imap/protocol/FetchItem;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;[Lcom/sun/mail/imap/protocol/FetchItem;)V
    .locals 0
    .param p1, "r"    # Lcom/sun/mail/imap/protocol/IMAPResponse;
    .param p2, "fitems"    # [Lcom/sun/mail/imap/protocol/FetchItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    .line 95
    iput-object p2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    .line 96
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    .line 97
    return-void
.end method

.method public static getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 6
    .param p0, "r"    # [Lcom/sun/mail/iap/Response;
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/mail/imap/protocol/Item;",
            ">([",
            "Lcom/sun/mail/iap/Response;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 128
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 129
    return-object v0

    .line 131
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 145
    .end local v1    # "i":I
    return-object v0

    .line 133
    .restart local v1    # "i":I
    :cond_1
    aget-object v2, p0, v1

    if-eqz v2, :cond_5

    .line 134
    aget-object v2, p0, v1

    instance-of v2, v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v2, :cond_5

    .line 135
    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 136
    goto :goto_2

    .line 138
    :cond_2
    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 139
    .local v2, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v2, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v5, v4

    if-lt v3, v5, :cond_3

    goto :goto_2

    .line 140
    :cond_3
    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 141
    iget-object v0, v2, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v0, v0, v3

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/protocol/Item;

    return-object v0

    .line 139
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    .end local v2    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v3    # "j":I
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getItems([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Ljava/util/List;
    .locals 6
    .param p0, "r"    # [Lcom/sun/mail/iap/Response;
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/mail/imap/protocol/Item;",
            ">([",
            "Lcom/sun/mail/iap/Response;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 161
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_0

    .line 164
    return-object v0

    .line 166
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 180
    .end local v1    # "i":I
    return-object v0

    .line 168
    .restart local v1    # "i":I
    :cond_1
    aget-object v2, p0, v1

    if-eqz v2, :cond_5

    .line 169
    aget-object v2, p0, v1

    instance-of v2, v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v2, :cond_5

    .line 170
    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 171
    goto :goto_2

    .line 173
    :cond_2
    aget-object v2, p0, v1

    check-cast v2, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 174
    .local v2, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v2, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v5, v4

    if-lt v3, v5, :cond_3

    goto :goto_2

    .line 175
    :cond_3
    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    iget-object v4, v2, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/Item;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    .end local v2    # "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    .end local v3    # "j":I
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private match(Ljava/lang/String;)Z
    .locals 5
    .param p1, "itemName"    # Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 337
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .local v2, "j":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 343
    .end local v1    # "i":I
    .end local v2    # "j":I
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 344
    const/4 v1, 0x1

    return v1

    .line 340
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    aget-byte v2, v3, v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 341
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 340
    if-eq v2, v1, :cond_1

    .line 342
    const/4 v1, 0x0

    return v1

    .line 340
    :cond_1
    move v1, v3

    move v2, v4

    goto :goto_0
.end method

.method private match([C)Z
    .locals 5
    .param p1, "itemName"    # [C

    .line 318
    array-length v0, p1

    .line 319
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .local v2, "j":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 324
    .end local v1    # "i":I
    .end local v2    # "j":I
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 325
    const/4 v1, 0x1

    return v1

    .line 322
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "j":I
    .local v4, "j":I
    aget-byte v2, v3, v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aget-char v1, p1, v1

    if-eq v2, v1, :cond_1

    .line 323
    const/4 v1, 0x0

    return v1

    .line 322
    :cond_1
    move v1, v3

    move v2, v4

    goto :goto_0
.end method

.method private next20()Ljava/lang/String;
    .locals 4

    .line 232
    iget v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v0, v0, 0x14

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    if-le v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v3, v3, 0x14

    invoke-static {v1, v2, v3}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 202
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x28

    if-ne v0, v1, :cond_4

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/Item;>;"
    const/4 v1, 0x0

    .line 209
    .local v1, "i":Lcom/sun/mail/imap/protocol/Item;
    :cond_0
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 211
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    if-ge v2, v3, :cond_3

    .line 215
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parseItem()Lcom/sun/mail/imap/protocol/Item;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_1

    .line 217
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parseExtensionItem()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x29

    if-ne v2, v3, :cond_0

    .line 224
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/Item;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/Item;

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    .line 226
    return-void

    .line 219
    :cond_2
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error in FETCH parsing, unrecognized item at index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    iget v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", starts with \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->next20()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_3
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error in FETCH parsing, ran off end of buffer, size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    .end local v0    # "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/Item;>;"
    .end local v1    # "i":Lcom/sun/mail/imap/protocol/Item;
    :cond_4
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in FETCH parsing, missing \'(\' at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseExtensionItem()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    return v1

    .line 300
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 307
    .end local v0    # "i":I
    return v1

    .line 301
    .restart local v0    # "i":I
    :cond_1
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->getExtensionItems()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 303
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    aget-object v3, v3, v0

    invoke-virtual {v3, p0}, Lcom/sun/mail/imap/protocol/FetchItem;->parseItem(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljava/lang/Object;

    move-result-object v3

    .line 302
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const/4 v1, 0x1

    return v1

    .line 300
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseItem()Lcom/sun/mail/imap/protocol/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x42

    if-eq v0, v1, :cond_8

    const/16 v1, 0x49

    if-eq v0, v1, :cond_7

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x52

    if-eq v0, v1, :cond_3

    const/16 v1, 0x55

    if-eq v0, v1, :cond_2

    const/16 v1, 0x62

    if-eq v0, v1, :cond_8

    const/16 v1, 0x69

    if-eq v0, v1, :cond_7

    const/16 v1, 0x6d

    if-eq v0, v1, :cond_6

    const/16 v1, 0x72

    if-eq v0, v1, :cond_3

    const/16 v1, 0x75

    if-eq v0, v1, :cond_2

    const/16 v1, 0x45

    if-eq v0, v1, :cond_1

    const/16 v1, 0x46

    if-eq v0, v1, :cond_0

    const/16 v1, 0x65

    if-eq v0, v1, :cond_1

    const/16 v1, 0x66

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 251
    :cond_0
    sget-object v0, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 252
    new-instance v0, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    return-object v0

    .line 247
    :cond_1
    sget-object v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 248
    new-instance v0, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 281
    :cond_2
    sget-object v0, Lcom/sun/mail/imap/protocol/UID;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 282
    new-instance v0, Lcom/sun/mail/imap/protocol/UID;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/UID;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 269
    :cond_3
    sget-object v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    new-instance v0, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/RFC822SIZE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 271
    :cond_4
    sget-object v0, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "isHeader":Z
    sget-object v1, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    const/4 v0, 0x1

    goto :goto_0

    .line 275
    :cond_5
    sget-object v1, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    .line 277
    :goto_0
    new-instance v1, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-direct {v1, p0, v0}, Lcom/sun/mail/imap/protocol/RFC822DATA;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;Z)V

    return-object v1

    .line 285
    .end local v0    # "isHeader":Z
    :cond_6
    sget-object v0, Lcom/sun/mail/imap/protocol/MODSEQ;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 286
    new-instance v0, Lcom/sun/mail/imap/protocol/MODSEQ;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/MODSEQ;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 255
    :cond_7
    sget-object v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 256
    new-instance v0, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/INTERNALDATE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 259
    :cond_8
    sget-object v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 260
    new-instance v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 261
    :cond_9
    sget-object v0, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 262
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_a

    .line 263
    new-instance v0, Lcom/sun/mail/imap/protocol/BODY;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/BODY;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 265
    :cond_a
    new-instance v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    return-object v0

    .line 291
    :cond_b
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getExtensionItems()Ljava/util/Map;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->extensionItems:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->extensionItems:Ljava/util/Map;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->extensionItems:Ljava/util/Map;

    return-object v0
.end method

.method public getItem(I)Lcom/sun/mail/imap/protocol/Item;
    .locals 1
    .param p1, "index"    # I

    .line 104
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/mail/imap/protocol/Item;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 108
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 113
    .end local v0    # "i":I
    const/4 v0, 0x0

    return-object v0

    .line 109
    .restart local v0    # "i":I
    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/Item;

    return-object v1

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v0, v0

    return v0
.end method
