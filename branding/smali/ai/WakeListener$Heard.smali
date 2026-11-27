.class final Lcom/isaigu/gymapp/ai/WakeListener$Heard;
.super Ljava/lang/Object;
.source "WakeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/WakeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Heard"
.end annotation


# instance fields
.field final mode:I

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/WakeListener$Heard;->text:Ljava/lang/String;

    .line 617
    iput p2, p0, Lcom/isaigu/gymapp/ai/WakeListener$Heard;->mode:I

    .line 618
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 622
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/WakeListener$Heard;->text:Ljava/lang/String;

    iget v1, p0, Lcom/isaigu/gymapp/ai/WakeListener$Heard;->mode:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/WakeListener;->heard(Ljava/lang/String;I)V

    .line 623
    return-void
.end method
