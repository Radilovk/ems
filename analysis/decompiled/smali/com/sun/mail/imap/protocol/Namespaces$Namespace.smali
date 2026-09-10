.class public Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
.super Ljava/lang/Object;
.source "Namespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/imap/protocol/Namespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Namespace"
.end annotation


# instance fields
.field public delimiter:C

.field public prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .locals 5
    .param p1, "r"    # Lcom/sun/mail/iap/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x29

    const/16 v3, 0x22

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    .line 81
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    .line 82
    const-string v2, "Missing \'(\' at start of Namespace"

    .line 81
    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->prefix:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 87
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v1

    if-ne v1, v3, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    .line 89
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    .line 90
    iget-char v1, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_1

    .line 91
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v1

    if-eq v1, v3, :cond_5

    .line 93
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    .line 94
    const-string v2, "Missing \'\"\' at end of QUOTED_CHAR"

    .line 93
    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_3

    .line 98
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Expected NIL, got null"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_3
    const-string v1, "NIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 100
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected NIL, got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_4
    const/4 v1, 0x0

    iput-char v1, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    .line 104
    .end local v0    # "s":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v1

    if-eq v1, v4, :cond_6

    .line 108
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 109
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 111
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readStringList()[Ljava/lang/String;

    .line 113
    :cond_6
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v1

    if-eq v1, v4, :cond_7

    .line 114
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Missing \')\' at end of Namespace"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_7
    return-void
.end method
