.class Ljavax/mail/internet/InternetHeaders$MatchEnum;
.super Ljava/lang/Object;
.source "InternetHeaders.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/InternetHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchEnum"
.end annotation


# instance fields
.field private e:Ljava/util/Iterator;

.field private match:Z

.field private names:[Ljava/lang/String;

.field private next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

.field private want_line:Z


# direct methods
.method constructor <init>(Ljava/util/List;[Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "v"    # Ljava/util/List;
    .param p2, "n"    # [Ljava/lang/String;
    .param p3, "m"    # Z
    .param p4, "l"    # Z

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->e:Ljava/util/Iterator;

    .line 185
    iput-object p2, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->names:[Ljava/lang/String;

    .line 186
    iput-boolean p3, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    .line 187
    iput-boolean p4, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->want_line:Z

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 189
    return-void
.end method

.method private nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 226
    :cond_0
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->e:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    move-object v0, v2

    .line 253
    :cond_1
    :goto_0
    return-object v0

    .line 227
    :cond_2
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->e:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 230
    .local v0, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    iget-object v3, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->names:[Ljava/lang/String;

    if-nez v3, :cond_3

    .line 235
    iget-boolean v3, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 238
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->names:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_4

    .line 250
    iget-boolean v3, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    if-nez v3, :cond_0

    goto :goto_0

    .line 239
    :cond_4
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->names:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 240
    iget-boolean v3, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->match:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 238
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$MatchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 199
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 206
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v1, :cond_0

    .line 207
    invoke-direct {p0}, Ljavax/mail/internet/InternetHeaders$MatchEnum;->nextMatch()Ljavax/mail/internet/InternetHeaders$InternetHeader;

    move-result-object v1

    iput-object v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 209
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    if-nez v1, :cond_1

    .line 210
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No more headers"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 213
    .local v0, "h":Ljavax/mail/internet/InternetHeaders$InternetHeader;
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->next_header:Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 214
    iget-boolean v1, p0, Ljavax/mail/internet/InternetHeaders$MatchEnum;->want_line:Z

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 217
    :goto_0
    return-object v1

    :cond_2
    new-instance v1, Ljavax/mail/Header;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
