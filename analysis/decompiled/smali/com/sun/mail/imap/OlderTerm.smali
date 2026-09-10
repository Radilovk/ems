.class public final Lcom/sun/mail/imap/OlderTerm;
.super Ljavax/mail/search/SearchTerm;
.source "OlderTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x36d50d5ec274bd22L


# instance fields
.field private interval:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljavax/mail/search/SearchTerm;-><init>()V

    .line 67
    iput p1, p0, Lcom/sun/mail/imap/OlderTerm;->interval:I

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 106
    instance-of v1, p1, Lcom/sun/mail/imap/OlderTerm;

    if-nez v1, :cond_1

    .line 108
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    iget v1, p0, Lcom/sun/mail/imap/OlderTerm;->interval:I

    check-cast p1, Lcom/sun/mail/imap/OlderTerm;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v2, p1, Lcom/sun/mail/imap/OlderTerm;->interval:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/sun/mail/imap/OlderTerm;->interval:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/sun/mail/imap/OlderTerm;->interval:I

    return v0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 12
    .param p1, "msg"    # Ljavax/mail/Message;

    .prologue
    const/4 v2, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    .local v0, "d":Ljava/util/Date;
    if-nez v0, :cond_1

    .line 98
    .end local v0    # "d":Ljava/util/Date;
    :cond_0
    :goto_0
    return v2

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "d":Ljava/util/Date;
    :cond_1
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v3, p0, Lcom/sun/mail/imap/OlderTerm;->interval:I

    int-to-long v8, v3

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    .line 98
    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method
