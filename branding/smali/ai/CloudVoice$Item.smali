.class final Lcom/isaigu/gymapp/ai/CloudVoice$Item;
.super Ljava/lang/Object;
.source "CloudVoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/CloudVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Item"
.end annotation


# instance fields
.field final gen:I

.field final id:Ljava/lang/String;

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->text:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->id:Ljava/lang/String;

    .line 66
    iput p3, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->gen:I

    .line 67
    return-void
.end method
