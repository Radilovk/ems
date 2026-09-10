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

    .prologue
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
    .locals 3

    .prologue
    .line 25
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 34
    :cond_1
    return v1

    .line 28
    :cond_2
    const/4 v1, 0x0

    .line 29
    .local v1, "max":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 30
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v2, v2, v0

    if-le v2, v1, :cond_3

    .line 31
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v1, v2, v0

    .line 29
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMinBodyStrenth()I
    .locals 3

    .prologue
    .line 38
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v2, v2

    if-gtz v2, :cond_2

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 47
    :cond_1
    return v1

    .line 41
    :cond_2
    const/16 v1, 0x7d0

    .line 42
    .local v1, "min":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 43
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v2, v2, v0

    if-ge v2, v1, :cond_3

    .line 44
    iget-object v2, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    aget v1, v2, v0

    .line 42
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 20
    iget-object v1, p0, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method
