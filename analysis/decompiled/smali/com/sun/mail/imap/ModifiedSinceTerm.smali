.class public final Lcom/sun/mail/imap/ModifiedSinceTerm;
.super Ljavax/mail/search/SearchTerm;
.source "ModifiedSinceTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x477da746691c5038L


# instance fields
.field private modseq:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "modseq"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 66
    iput-wide p1, p0, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 104
    instance-of v1, p1, Lcom/sun/mail/imap/ModifiedSinceTerm;

    if-nez v1, :cond_1

    .line 106
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    iget-wide v2, p0, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    check-cast p1, Lcom/sun/mail/imap/ModifiedSinceTerm;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v4, p1, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getModSeq()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    long-to-int v0, v0

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 6
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    const/4 v1, 0x0

    .line 89
    :try_start_0
    instance-of v4, p1, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v4, :cond_0

    .line 90
    check-cast p1, Lcom/sun/mail/imap/IMAPMessage;

    .end local p1    # "msg":Ljavax/mail/Message;
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getModSeq()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 97
    .local v2, "m":J
    iget-wide v4, p0, Lcom/sun/mail/imap/ModifiedSinceTerm;->modseq:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    const/4 v1, 0x1

    .end local v2    # "m":J
    :cond_0
    :goto_0
    return v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
