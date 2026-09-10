.class public Lcom/isaigu/gymapp/bean/PartStrenthBean;
.super Ljava/lang/Object;
.source "PartStrenthBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public buwei:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 15
    return-void
.end method


# virtual methods
.method public getMaxBodyStrenth()I
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    .local v0, "max":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 30
    aget v3, v2, v1

    if-le v3, v0, :cond_1

    .line 31
    aget v0, v2, v1

    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 26
    .end local v0    # "max":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMinBodyStrenth()I
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v0, :cond_3

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    const/16 v0, 0x7d0

    .line 42
    .local v0, "min":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 43
    aget v3, v2, v1

    if-ge v3, v0, :cond_1

    .line 44
    aget v0, v2, v1

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 39
    .end local v0    # "min":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 3

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 20
    const/4 v2, 0x0

    aput v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
