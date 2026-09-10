.class Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseSourceInfoStorage.java"

# interfaces
.implements Lcom/danikula/videocache/sourcestorage/SourceInfoStorage;


# static fields
.field private static final ALL_COLUMNS:[Ljava/lang/String;

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_LENGTH:Ljava/lang/String; = "length"

.field private static final COLUMN_MIME:Ljava/lang/String; = "mime"

.field private static final COLUMN_URL:Ljava/lang/String; = "url"

.field private static final CREATE_SQL:Ljava/lang/String; = "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);"

.field private static final TABLE:Ljava/lang/String; = "SourceInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 26
    const-string v0, "_id"

    const-string v1, "url"

    const-string v2, "length"

    const-string v3, "mime"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;->ALL_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    const-string v0, "AndroidVideoCache.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private convert(Lcom/danikula/videocache/SourceInfo;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "sourceInfo"    # Lcom/danikula/videocache/SourceInfo;

    .line 92
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p1, Lcom/danikula/videocache/SourceInfo;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-wide v1, p1, Lcom/danikula/videocache/SourceInfo;->length:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    iget-object v1, p1, Lcom/danikula/videocache/SourceInfo;->mime:Ljava/lang/String;

    const-string v2, "mime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-object v0
.end method

.method private convert(Landroid/database/Cursor;)Lcom/danikula/videocache/SourceInfo;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 84
    new-instance v0, Lcom/danikula/videocache/SourceInfo;

    .line 85
    const-string v1, "url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v2, "length"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 87
    const-string v4, "mime"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/danikula/videocache/SourceInfo;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/danikula/videocache/SourceInfo;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/4 v0, 0x0

    .line 56
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SourceInfo"

    sget-object v3, Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;->ALL_COLUMNS:[Ljava/lang/String;

    const-string v4, "url=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    .line 57
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;->convert(Landroid/database/Cursor;)Lcom/danikula/videocache/SourceInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 59
    :goto_1
    if-eqz v0, :cond_2

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    .line 59
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 60
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    invoke-static {p1}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not be called. There is no any migration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Lcom/danikula/videocache/SourceInfo;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sourceInfo"    # Lcom/danikula/videocache/SourceInfo;

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v2, 0x1

    aput-object p2, v0, v2

    invoke-static {v0}, Lcom/danikula/videocache/Preconditions;->checkAllNotNull([Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;->get(Ljava/lang/String;)Lcom/danikula/videocache/SourceInfo;

    move-result-object v0

    .line 69
    .local v0, "sourceInfoFromDb":Lcom/danikula/videocache/SourceInfo;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 70
    .local v3, "exist":Z
    :goto_0
    invoke-direct {p0, p2}, Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;->convert(Lcom/danikula/videocache/SourceInfo;)Landroid/content/ContentValues;

    move-result-object v4

    .line 71
    .local v4, "contentValues":Landroid/content/ContentValues;
    const-string v5, "SourceInfo"

    if-eqz v3, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    const-string v1, "url=?"

    invoke-virtual {v6, v5, v4, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 76
    :goto_1
    return-void
.end method

.method public release()V
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/danikula/videocache/sourcestorage/DatabaseSourceInfoStorage;->close()V

    .line 81
    return-void
.end method
