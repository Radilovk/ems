.class final Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;
.super Ljava/lang/Object;
.source "BluetensShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Req"
.end annotation


# instance fields
.field final cmd:Ljava/lang/String;

.field content:[B

.field file:Ljava/lang/String;

.field final kind:I

.field md5:Ljava/lang/String;

.field retried:Z

.field swap:Z

.field value:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->kind:I

    .line 91
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/bluetens/BluetensShell$Req;->cmd:Ljava/lang/String;

    .line 92
    return-void
.end method
