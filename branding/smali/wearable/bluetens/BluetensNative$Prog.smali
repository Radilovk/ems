.class public final Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;
.super Ljava/lang/Object;
.source "BluetensNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prog"
.end annotation


# instance fields
.field public base:Ljava/lang/String;

.field public entry:Ljava/lang/String;

.field public group:Ljava/lang/String;

.field public hzHi:I

.field public hzLo:I

.field public ms:D

.field public name:Ljava/lang/String;

.field public usHi:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensNative$Prog;->group:Ljava/lang/String;

    return-void
.end method
