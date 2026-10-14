.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$ByName;
.super Ljava/lang/Object;
.source "BluetensNative.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ByName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;)I
    .registers 5

    .prologue
    .line 264
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->group:Ljava/lang/String;

    iget-object v1, p2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->group:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 265
    if-eqz v0, :cond_b

    :goto_a
    return v0

    :cond_b
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_a
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 261
    check-cast p1, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    check-cast p2, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$ByName;->compare(Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;)I

    move-result v0

    return v0
.end method
