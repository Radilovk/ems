.class public final Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;
.super Ljava/lang/Object;
.source "MusicPlaylistEntry.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->uri:Landroid/net/Uri;

    .line 11
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    goto :goto_12

    :cond_e
    invoke-static {p1}, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->uriToLabel(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    :goto_12
    iput-object p2, p0, Lcom/isaigu/gymapp/dialog/MusicPlaylistEntry;->name:Ljava/lang/String;

    .line 12
    return-void
.end method

.method private static uriToLabel(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    .line 15
    if-nez p0, :cond_5

    .line 16
    const-string p0, ""

    return-object p0

    .line 18
    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_16
    return-object v0
.end method
