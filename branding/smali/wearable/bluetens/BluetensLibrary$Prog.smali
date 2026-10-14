.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;
.super Ljava/lang/Object;
.source "BluetensLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prog"
.end annotation


# instance fields
.field public cat:Ljava/lang/String;

.field public file:Ljava/lang/String;

.field public hzHi:I

.field public hzLo:I

.field public lok:Ljava/lang/String;

.field public master:Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public nameBg:Ljava/lang/String;

.field public nameEn:Ljava/lang/String;

.field public parts:[Ljava/lang/String;

.field public secs:I

.field public usHi:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public name(Z)Ljava/lang/String;
    .registers 3

    .prologue
    .line 43
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->nameBg:Ljava/lang/String;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->nameEn:Ljava/lang/String;

    goto :goto_4
.end method

.method public on(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 55
    :cond_a
    :goto_a
    return v0

    .line 50
    :cond_b
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensLibrary$Prog;->parts:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_f
    if-ge v2, v4, :cond_1c

    aget-object v5, v3, v2

    .line 51
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    move v0, v1

    .line 55
    goto :goto_a
.end method
