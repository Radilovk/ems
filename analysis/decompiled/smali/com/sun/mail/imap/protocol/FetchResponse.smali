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

    .prologue
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

    .line 197
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

    .line 198
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

    .prologue
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

    .prologue
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

    .prologue
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
    .locals 5
    .param p0, "r"    # [Lcom/sun/mail/iap/Response;
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/mail/imap/protocol/Item;",
            ">([",
            "Lcom/sun/mail/iap/Response;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 128
    if-nez p0, :cond_0

    move-object v3, v4

    .line 145
    :goto_0
    return-object v3

    .line 131
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_1

    move-object v3, v4

    .line 145
    goto :goto_0

    .line 133
    :cond_1
    aget-object v3, p0, v1

    if-eqz v3, :cond_2

    .line 134
    aget-object v3, p0, v1

    instance-of v3, v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v3, :cond_2

    .line 135
    aget-object v3, p0, v1

    check-cast v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v3

    if-eq v3, p1, :cond_3

    .line 131
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    :cond_3
    aget-object v0, p0, v1

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 139
    .local v0, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 140
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 141
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v3, v3, v2

    invoke-virtual {p2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/protocol/Item;

    goto :goto_0

    .line 139
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static getItems([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Ljava/util/List;
    .locals 5
    .param p0, "r"    # [Lcom/sun/mail/iap/Response;
    .param p1, "msgno"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/mail/imap/protocol/Item;",
            ">([",
            "Lcom/sun/mail/iap/Response;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_1

    .line 180
    :cond_0
    return-object v2

    .line 166
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 168
    aget-object v4, p0, v1

    if-eqz v4, :cond_2

    .line 169
    aget-object v4, p0, v1

    instance-of v4, v4, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v4, :cond_2

    .line 170
    aget-object v4, p0, v1

    check-cast v4, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v4

    if-eq v4, p1, :cond_3

    .line 166
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_3
    aget-object v0, p0, v1

    check-cast v0, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 174
    .local v0, "f":Lcom/sun/mail/imap/protocol/FetchResponse;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 175
    iget-object v4, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 176
    iget-object v4, v0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v4, v4, v3

    invoke-virtual {p2, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/Item;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private match(Ljava/lang/String;)Z
    .locals 7
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 337
    .local v4, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 343
    iget v5, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 344
    const/4 v5, 0x1

    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_1
    return v5

    .line 340
    .end local v0    # "i":I
    .end local v2    # "j":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_0
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 341
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 340
    if-eq v5, v6, :cond_1

    .line 342
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method private match([C)Z
    .locals 7
    .param p1, "itemName"    # [C

    .prologue
    .line 318
    array-length v4, p1

    .line 319
    .local v4, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .local v2, "j":I
    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 324
    iget v5, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 325
    const/4 v5, 0x1

    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_1
    return v5

    .line 322
    .end local v0    # "i":I
    .end local v2    # "j":I
    .restart local v1    # "i":I
    .restart local v3    # "j":I
    :cond_0
    iget-object v5, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-byte v5, v5, v3

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aget-char v6, p1, v1

    if-eq v5, v6, :cond_1

    .line 323
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method private next20()Ljava/lang/String;
    .locals 4

    .prologue
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

    .line 235
    :goto_0
    return-object v0

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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    .line 202
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x28

    if-eq v2, v3, :cond_0

    .line 203
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error in FETCH parsing, missing \'(\' at index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 206
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v1, "v":Ljava/util/List;, "Ljava/util/List<Lcom/sun/mail/imap/protocol/Item;>;"
    const/4 v0, 0x0

    .line 209
    .local v0, "i":Lcom/sun/mail/imap/protocol/Item;
    :cond_1
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 211
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    if-lt v2, v3, :cond_2

    .line 212
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error in FETCH parsing, ran off end of buffer, size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_2
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parseItem()Lcom/sun/mail/imap/protocol/Item;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_4

    .line 217
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x29

    if-ne v2, v3, :cond_1

    .line 224
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    .line 225
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/Item;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/Item;

    iput-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    .line 226
    return-void

    .line 218
    :cond_4
    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parseExtensionItem()Z

    move-result v2

    if-nez v2, :cond_3

    .line 219
    new-instance v2, Lcom/sun/mail/iap/ParsingException;

    .line 220
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error in FETCH parsing, unrecognized item at index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    iget v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", starts with \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->next20()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-direct {v2, v3}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseExtensionItem()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    if-nez v2, :cond_1

    .line 307
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->fitems:[Lcom/sun/mail/imap/protocol/FetchItem;

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

    goto :goto_0

    .line 300
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private parseItem()Lcom/sun/mail/imap/protocol/Item;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 291
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 247
    :sswitch_0
    sget-object v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    new-instance v1, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_0

    .line 251
    :sswitch_1
    sget-object v1, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    new-instance v1, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    goto :goto_0

    .line 255
    :sswitch_2
    sget-object v1, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    new-instance v1, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/INTERNALDATE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_0

    .line 259
    :sswitch_3
    sget-object v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    new-instance v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_0

    .line 261
    :cond_1
    sget-object v1, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2

    .line 263
    new-instance v1, Lcom/sun/mail/imap/protocol/BODY;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/BODY;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_0

    .line 265
    :cond_2
    new-instance v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_0

    .line 269
    :sswitch_4
    sget-object v1, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    new-instance v1, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/RFC822SIZE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_0

    .line 271
    :cond_3
    sget-object v1, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_0

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

    .line 277
    :cond_4
    :goto_1
    new-instance v1, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-direct {v1, p0, v0}, Lcom/sun/mail/imap/protocol/RFC822DATA;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;Z)V

    goto :goto_0

    .line 275
    :cond_5
    sget-object v1, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 281
    .end local v0    # "isHeader":Z
    :sswitch_5
    sget-object v1, Lcom/sun/mail/imap/protocol/UID;->name:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    new-instance v1, Lcom/sun/mail/imap/protocol/UID;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/UID;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto/16 :goto_0

    .line 285
    :sswitch_6
    sget-object v1, Lcom/sun/mail/imap/protocol/MODSEQ;->name:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    new-instance v1, Lcom/sun/mail/imap/protocol/MODSEQ;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/MODSEQ;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto/16 :goto_0

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x45 -> :sswitch_0
        0x46 -> :sswitch_1
        0x49 -> :sswitch_2
        0x4d -> :sswitch_6
        0x52 -> :sswitch_4
        0x55 -> :sswitch_5
        0x62 -> :sswitch_3
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x69 -> :sswitch_2
        0x6d -> :sswitch_6
        0x72 -> :sswitch_4
        0x75 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public getExtensionItems()Ljava/util/Map;
    .locals 1

    .prologue
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

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/mail/imap/protocol/Item;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 113
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

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

    goto :goto_1

    .line 108
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v0, v0

    return v0
.end method
