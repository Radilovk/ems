.class final Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchReady;
.super Ljava/lang/Object;
.source "MusicSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/train/utils/MusicSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PrefetchReady"
.end annotation


# instance fields
.field private final envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

.field private final gen:I


# direct methods
.method constructor <init>(ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    .registers 3

    .line 1207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1208
    iput p1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchReady;->gen:I

    .line 1209
    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchReady;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    .line 1210
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1214
    iget v0, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchReady;->gen:I

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/MusicSync$PrefetchReady;->envelope:Lcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;

    # invokes: Lcom/isaigu/gymapp/train/utils/MusicSync;->onPrefetchEnvelope(ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->access$700(ILcom/isaigu/gymapp/train/utils/MusicPlayerEngine$Envelope;)V

    .line 1215
    return-void
.end method
