.class Lcom/sun/mail/imap/protocol/IMAPAddress;
.super Ljavax/mail/internet/InternetAddress;
.source "ENVELOPE.java"


# static fields
.field private static final serialVersionUID:J = -0x353b93d010f59e38L


# instance fields
.field private group:Z

.field private grouplist:[Ljavax/mail/internet/InternetAddress;

.field private groupname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 7
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    .line 190
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 192
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const-string v1, "ADDRESS parse error"

    const/16 v2, 0x28

    if-ne v0, v2, :cond_9

    .line 195
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->encodedPersonal:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "mb":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 203
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_8

    .line 206
    if-nez v2, :cond_4

    .line 208
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    .line 209
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    .line 210
    if-nez v0, :cond_0

    .line 211
    return-void

    .line 215
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v3, "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    nop

    :goto_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v5

    if-ne v5, v4, :cond_1

    goto :goto_1

    .line 219
    :cond_1
    new-instance v5, Lcom/sun/mail/imap/protocol/IMAPAddress;

    invoke-direct {v5, p1}, Lcom/sun/mail/imap/protocol/IMAPAddress;-><init>(Lcom/sun/mail/iap/Response;)V

    .line 220
    .local v5, "a":Lcom/sun/mail/imap/protocol/IMAPAddress;
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPAddress;->isEndOfGroup()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 221
    nop

    .line 227
    .end local v5    # "a":Lcom/sun/mail/imap/protocol/IMAPAddress;
    :goto_1
    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    .line 229
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/sun/mail/imap/protocol/IMAPAddress;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljavax/mail/internet/InternetAddress;

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    .line 230
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    goto :goto_3

    .line 222
    .restart local v1    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    .restart local v5    # "a":Lcom/sun/mail/imap/protocol/IMAPAddress;
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 223
    const/16 v6, 0x2c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 224
    :cond_3
    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/IMAPAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "v":Ljava/util/List;, "Ljava/util/List<Ljavax/mail/internet/InternetAddress;>;"
    .end local v5    # "a":Lcom/sun/mail/imap/protocol/IMAPAddress;
    :cond_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    .line 233
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 234
    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    goto :goto_3

    .line 236
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    goto :goto_3

    .line 232
    :cond_7
    :goto_2
    iput-object v2, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    .line 239
    :goto_3
    return-void

    .line 204
    :cond_8
    new-instance v3, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v3, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    .end local v0    # "mb":Ljava/lang/String;
    .end local v2    # "host":Ljava/lang/String;
    :cond_9
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    if-nez v0, :cond_0

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 252
    :cond_0
    invoke-virtual {v0}, [Ljavax/mail/internet/InternetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/internet/InternetAddress;

    return-object v0
.end method

.method isEndOfGroup()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGroup()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    return v0
.end method
