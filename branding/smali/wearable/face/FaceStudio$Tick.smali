.class final Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;
.super Ljava/lang/Object;
.source "FaceStudio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/face/FaceStudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tick"
.end annotation


# instance fields
.field private final v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;)V
    .registers 2

    .prologue
    .line 1181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    .line 1183
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Tick;->v:Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/face/FaceStudio$Studio;->tickNow()V

    .line 1188
    return-void
.end method
