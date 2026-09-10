.class public Lcom/sun/mail/imap/Rights;
.super Ljava/lang/Object;
.source "Rights.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/Rights$Right;
    }
.end annotation


# instance fields
.field private rights:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights$Right;)V
    .locals 3
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 198
    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 199
    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/Rights;)V
    .locals 4
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 179
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "rights"    # Ljava/lang/String;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x80

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 188
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 190
    .end local v0    # "i":I
    return-void

    .line 189
    .restart local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/Rights;->add(Lcom/sun/mail/imap/Rights$Right;)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/sun/mail/imap/Rights$Right;)V
    .locals 3
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 207
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 208
    return-void
.end method

.method public add(Lcom/sun/mail/imap/Rights;)V
    .locals 3
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 220
    .end local v0    # "i":I
    return-void

    .line 218
    .restart local v0    # "i":I
    :cond_0
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 217
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, "r":Lcom/sun/mail/imap/Rights;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/Rights;

    move-object v0, v1

    .line 324
    const/16 v1, 0x80

    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/sun/mail/imap/Rights;->rights:[Z

    .line 325
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-object v3, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 329
    return-object v0
.end method

.method public contains(Lcom/sun/mail/imap/Rights$Right;)Z
    .locals 2
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 250
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    aget-boolean v0, v0, v1

    return v0
.end method

.method public contains(Lcom/sun/mail/imap/Rights;)Z
    .locals 3
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 267
    .end local v0    # "i":I
    const/4 v0, 0x1

    return v0

    .line 263
    .restart local v0    # "i":I
    :cond_0
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 264
    const/4 v1, 0x0

    return v1

    .line 262
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 276
    instance-of v0, p1, Lcom/sun/mail/imap/Rights;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 277
    return v1

    .line 279
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/Rights;

    .line 281
    .local v0, "rights":Lcom/sun/mail/imap/Rights;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v4, v3

    if-lt v2, v4, :cond_1

    .line 285
    .end local v2    # "i":I
    const/4 v1, 0x1

    return v1

    .line 282
    .restart local v2    # "i":I
    :cond_1
    aget-boolean v3, v3, v2

    iget-object v4, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    aget-boolean v4, v4, v2

    if-eq v3, v4, :cond_2

    .line 283
    return v1

    .line 281
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getRights()[Lcom/sun/mail/imap/Rights$Right;
    .locals 4

    .line 308
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 309
    .local v0, "v":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 312
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/Rights$Right;

    .line 313
    .local v1, "rights":[Lcom/sun/mail/imap/Rights$Right;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 314
    return-object v1

    .line 310
    .local v1, "i":I
    :cond_0
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 311
    int-to-char v2, v1

    invoke-static {v2}, Lcom/sun/mail/imap/Rights$Right;->getInstance(C)Lcom/sun/mail/imap/Rights$Right;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 309
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "hash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 298
    .end local v1    # "i":I
    return v0

    .line 296
    .restart local v1    # "i":I
    :cond_0
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 297
    add-int/lit8 v0, v0, 0x1

    .line 295
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Lcom/sun/mail/imap/Rights$Right;)V
    .locals 3
    .param p1, "right"    # Lcom/sun/mail/imap/Rights$Right;

    .line 228
    iget-object v0, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    iget-char v1, p1, Lcom/sun/mail/imap/Rights$Right;->right:C

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 229
    return-void
.end method

.method public remove(Lcom/sun/mail/imap/Rights;)V
    .locals 3
    .param p1, "rights"    # Lcom/sun/mail/imap/Rights;

    .line 238
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 241
    .end local v0    # "i":I
    return-void

    .line 239
    .restart local v0    # "i":I
    :cond_0
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 238
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 333
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 334
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/imap/Rights;->rights:[Z

    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 337
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 335
    .restart local v1    # "i":I
    :cond_0
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 336
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 334
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
