.class public Ljavax/mail/Flags;
.super Ljava/lang/Object;
.source "Flags.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/Flags$Flag;
    }
.end annotation


# static fields
.field private static final ANSWERED_BIT:I = 0x1

.field private static final DELETED_BIT:I = 0x2

.field private static final DRAFT_BIT:I = 0x4

.field private static final FLAGGED_BIT:I = 0x8

.field private static final RECENT_BIT:I = 0x10

.field private static final SEEN_BIT:I = 0x20

.field private static final USER_BIT:I = -0x80000000

.field private static final serialVersionUID:J = 0x56a5b06539097bc4L


# instance fields
.field private system_flags:I

.field private user_flags:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 215
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 216
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags$Flag;)V
    .locals 2
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 206
    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 207
    return-void
.end method

.method public constructor <init>(Ljavax/mail/Flags;)V
    .locals 1
    .param p1, "flags"    # Ljavax/mail/Flags;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 195
    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 196
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .line 234
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 236
    :cond_0
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-void
.end method

.method public add(Ljavax/mail/Flags$Flag;)V
    .locals 2
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;

    .line 225
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 226
    return-void
.end method

.method public add(Ljavax/mail/Flags;)V
    .locals 4
    .param p1, "f"    # Ljavax/mail/Flags;

    .line 246
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    or-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 248
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 252
    :cond_0
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 254
    .local v0, "e":Ljava/util/Enumeration;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 255
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    .local v1, "s":Ljava/lang/String;
    iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    iget-object v3, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 259
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 450
    const/4 v0, 0x0

    .line 452
    .local v0, "f":Ljavax/mail/Flags;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/Flags;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 453
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 456
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v1}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, v0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    .line 458
    :cond_0
    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .line 316
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 317
    const/4 v0, 0x0

    return v0

    .line 319
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljavax/mail/Flags$Flag;)Z
    .locals 2
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;

    .line 306
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljavax/mail/Flags;)Z
    .locals 4
    .param p1, "f"    # Ljavax/mail/Flags;

    .line 332
    iget v0, p1, Ljavax/mail/Flags;->system_flags:I

    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 333
    return v2

    .line 336
    :cond_0
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    .line 337
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    .line 338
    return v2

    .line 339
    :cond_1
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 341
    .local v0, "e":Ljava/util/Enumeration;
    nop

    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 342
    :cond_3
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 343
    return v2

    .line 348
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_4
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 357
    instance-of v0, p1, Ljavax/mail/Flags;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 358
    return v1

    .line 360
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/Flags;

    .line 363
    .local v0, "f":Ljavax/mail/Flags;
    iget v2, v0, Ljavax/mail/Flags;->system_flags:I

    iget v3, p0, Ljavax/mail/Flags;->system_flags:I

    if-eq v2, v3, :cond_1

    .line 364
    return v1

    .line 367
    :cond_1
    iget-object v2, v0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v2, :cond_2

    .line 368
    return v3

    .line 369
    :cond_2
    iget-object v2, v0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v2, :cond_5

    iget-object v4, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v4, :cond_5

    .line 370
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    iget-object v4, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    if-ne v2, v4, :cond_5

    .line 371
    iget-object v2, v0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 373
    .local v2, "e":Ljava/util/Enumeration;
    nop

    :cond_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_4

    .line 377
    return v3

    .line 374
    :cond_4
    iget-object v4, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 375
    return v1

    .line 380
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_5
    return v1
.end method

.method public getSystemFlags()[Ljavax/mail/Flags$Flag;
    .locals 3

    .line 405
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 406
    .local v0, "v":Ljava/util/Vector;
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 407
    sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 408
    :cond_0
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 409
    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 410
    :cond_1
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 411
    sget-object v1, Ljavax/mail/Flags$Flag;->DRAFT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 412
    :cond_2
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 413
    sget-object v1, Ljavax/mail/Flags$Flag;->FLAGGED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 414
    :cond_3
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 415
    sget-object v1, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 416
    :cond_4
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 417
    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 418
    :cond_5
    iget v1, p0, Ljavax/mail/Flags;->system_flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    .line 419
    sget-object v1, Ljavax/mail/Flags$Flag;->USER:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 421
    :cond_6
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Flags$Flag;

    .line 422
    .local v1, "f":[Ljavax/mail/Flags$Flag;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 423
    return-object v1
.end method

.method public getUserFlags()[Ljava/lang/String;
    .locals 3

    .line 433
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 434
    .local v0, "v":Ljava/util/Vector;
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    .line 435
    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 437
    .local v1, "e":Ljava/util/Enumeration;
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 438
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 441
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 442
    .local v1, "f":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 443
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .line 389
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 390
    .local v0, "hash":I
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    .line 391
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 392
    .local v1, "e":Ljava/util/Enumeration;
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 393
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 395
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_1
    :goto_1
    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "flag"    # Ljava/lang/String;

    .line 276
    iget-object v0, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 277
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    return-void
.end method

.method public remove(Ljavax/mail/Flags$Flag;)V
    .locals 2
    .param p1, "flag"    # Ljavax/mail/Flags$Flag;

    .line 267
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    invoke-static {p1}, Ljavax/mail/Flags$Flag;->access$0(Ljavax/mail/Flags$Flag;)I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 268
    return-void
.end method

.method public remove(Ljavax/mail/Flags;)V
    .locals 3
    .param p1, "f"    # Ljavax/mail/Flags;

    .line 287
    iget v0, p0, Ljavax/mail/Flags;->system_flags:I

    iget v1, p1, Ljavax/mail/Flags;->system_flags:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Ljavax/mail/Flags;->system_flags:I

    .line 289
    iget-object v0, p1, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 290
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 291
    return-void

    .line 293
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 294
    .local v0, "e":Ljava/util/Enumeration;
    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 295
    :cond_1
    iget-object v1, p0, Ljavax/mail/Flags;->user_flags:Ljava/util/Hashtable;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    .end local v0    # "e":Ljava/util/Enumeration;
    :cond_2
    :goto_1
    return-void
.end method
