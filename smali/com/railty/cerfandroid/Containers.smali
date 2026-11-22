.class final Lcom/railty/cerfandroid/Containers;
.super Ljava/lang/Object;
.source "Containers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/railty/cerfandroid/Containers$Info;
    }
.end annotation


# static fields
.field private static final ACTIVE_FILE:Ljava/lang/String; = "active"

.field private static final EXPORT_META:Ljava/lang/String; = "cerf-container-export.json"

.field static final SETTINGS_FILE:Ljava/lang/String; = "container.json"

.field private static repaired:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized ActiveDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    const-class v0, Lcom/railty/cerfandroid/Containers;

    monitor-enter v0

    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->Migrate(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->RepairLegacyPaths(Landroid/content/Context;)V

    .line 48
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->Root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "active"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/railty/cerfandroid/Containers;->ReadText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->Root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v2

    .line 50
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 51
    :cond_1
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->List(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "\uae30\ubcf8"

    invoke-static {p0, v1}, Lcom/railty/cerfandroid/Containers;->Create(Landroid/content/Context;Ljava/lang/String;)Lcom/railty/cerfandroid/Containers$Info;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/railty/cerfandroid/Containers$Info;

    :goto_1
    iget-object v1, v1, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/railty/cerfandroid/Containers;->SetActive(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_3
    monitor-exit v0

    return-object v1

    .line 45
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static ActiveId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->ActiveDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static CopyTree(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 146
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 147
    if-nez p0, :cond_0

    return-void

    .line 148
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 149
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3, v4}, Lcom/railty/cerfandroid/Containers;->CopyTree(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1

    .line 151
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/nio/file/CopyOption;

    sget-object v6, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 148
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_2
    return-void
.end method

.method static Create(Landroid/content/Context;Ljava/lang/String;)Lcom/railty/cerfandroid/Containers$Info;
    .locals 7

    .line 84
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->Root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 85
    const/4 v0, 0x1

    .line 88
    :goto_0
    new-instance v4, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 92
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "container.json"

    invoke-direct {p0, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "container_name"

    .line 93
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {p0, v0}, Lcom/railty/cerfandroid/Containers;->WriteText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .line 97
    new-instance v1, Lcom/railty/cerfandroid/Containers$Info;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/railty/cerfandroid/Containers$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 95
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 89
    :cond_0
    move-object v3, p1

    move v0, v2

    goto :goto_0
.end method

.method static Delete(Landroid/content/Context;Lcom/railty/cerfandroid/Containers$Info;)V
    .locals 3

    .line 139
    iget-object v0, p1, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    invoke-static {v0}, Lcom/railty/cerfandroid/Containers;->DeleteTree(Ljava/io/File;)V

    .line 140
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->Root(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "active"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/railty/cerfandroid/Containers;->ReadText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    new-instance p1, Ljava/io/File;

    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->Root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 142
    :cond_0
    return-void
.end method

.method private static DeleteTree(Ljava/io/File;)V
    .locals 4

    .line 157
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/railty/cerfandroid/Containers;->DeleteTree(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 160
    return-void
.end method

.method static Duplicate(Landroid/content/Context;Lcom/railty/cerfandroid/Containers$Info;Ljava/lang/String;)Lcom/railty/cerfandroid/Containers$Info;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-static {p0, p2}, Lcom/railty/cerfandroid/Containers;->Create(Landroid/content/Context;Ljava/lang/String;)Lcom/railty/cerfandroid/Containers$Info;

    move-result-object p0

    .line 102
    iget-object v0, p1, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    iget-object v1, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/railty/cerfandroid/Containers;->CopyTree(Ljava/io/File;Ljava/io/File;)V

    .line 103
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    const-string v2, "container.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Lcom/railty/cerfandroid/Containers;->ReadJson(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 106
    :try_start_0
    iget-object p1, p1, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/railty/cerfandroid/Containers;->RemapPaths(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    const-string p1, "container_name"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string p1, "container_last_run"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/railty/cerfandroid/Containers;->WriteText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    nop

    .line 113
    new-instance v1, Lcom/railty/cerfandroid/Containers$Info;

    iget-object v2, p0, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    const-wide/16 v5, 0x0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/railty/cerfandroid/Containers$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V

    return-object v1

    .line 110
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 111
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static Export(Lcom/railty/cerfandroid/Containers$Info;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 194
    :try_start_0
    new-instance p1, Ljava/util/zip/ZipEntry;

    const-string v1, "cerf-container-export.json"

    invoke-direct {p1, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "source_dir"

    iget-object v2, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "name"

    iget-object v2, p0, Lcom/railty/cerfandroid/Containers$Info;->name:Ljava/lang/String;

    .line 197
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 196
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->write([B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    nop

    .line 201
    :try_start_2
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 202
    iget-object p0, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    const-string p1, ""

    invoke-static {v0, p0, p1}, Lcom/railty/cerfandroid/Containers;->ZipTree(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 204
    return-void

    .line 198
    :catch_0
    move-exception p0

    .line 199
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method static Import(Landroid/content/Context;Ljava/io/InputStream;)Lcom/railty/cerfandroid/Containers$Info;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    const-string v1, "\uac00\uc838\uc628 \uae30\uae30"

    invoke-static {p0, v1}, Lcom/railty/cerfandroid/Containers;->Create(Landroid/content/Context;Ljava/lang/String;)Lcom/railty/cerfandroid/Containers$Info;

    move-result-object p0

    .line 228
    nop

    .line 229
    nop

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    const/high16 v0, 0x10000

    new-array v3, v0, [B

    .line 232
    nop

    .line 233
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 p1, 0x0

    move-object v6, p1

    move-object v7, v6

    .line 236
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 237
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "cerf-container-export.json"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 239
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 241
    :goto_1
    invoke-virtual {v5, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v0, v3, v4, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 243
    :cond_1
    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    const-string v9, "UTF-8"

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    const-string v0, "source_dir"

    invoke-virtual {v8, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 245
    const-string v0, "name"

    invoke-virtual {v8, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 247
    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 248
    goto :goto_0

    .line 250
    :cond_2
    :try_start_3
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 253
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 254
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 256
    :goto_2
    :try_start_4
    invoke-virtual {v5, v3}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v9, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 257
    :cond_3
    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 258
    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1

    .line 252
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\uc798\ubabb\ub41c \ud56d\ubaa9: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_5
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    const-string v2, "container.json"

    invoke-direct {p1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 261
    invoke-static {p1}, Lcom/railty/cerfandroid/Containers;->ReadJson(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 263
    if-eqz v6, :cond_6

    :try_start_8
    iget-object v2, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v6, v2}, Lcom/railty/cerfandroid/Containers;->RemapPaths(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 271
    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_6

    .line 264
    :cond_6
    :goto_4
    const-string v2, "container_name"

    if-eqz v7, :cond_7

    move-object v10, v7

    goto :goto_5

    .line 265
    :cond_7
    :try_start_9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    .line 266
    :goto_5
    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    const-string v1, "container_last_run"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/railty/cerfandroid/Containers;->WriteText(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    nop

    .line 270
    const/4 v4, 0x1

    new-instance v8, Lcom/railty/cerfandroid/Containers$Info;

    iget-object v9, p0, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;

    iget-object v11, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    const-wide/16 v12, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/railty/cerfandroid/Containers$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 274
    :try_start_a
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 275
    nop

    .line 270
    return-object v8

    .line 272
    :goto_6
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 260
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "CERF \ucee8\ud14c\uc774\ub108 \ud30c\uc77c\uc774 \uc544\ub2d9\ub2c8\ub2e4"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 233
    :catchall_2
    move-exception v0

    move-object p1, v0

    :try_start_c
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :try_start_d
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 275
    :catchall_4
    move-exception v0

    move-object p1, v0

    if-nez v4, :cond_9

    iget-object p0, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->DeleteTree(Ljava/io/File;)V

    .line 276
    :cond_9
    throw p1
.end method

.method static List(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/railty/cerfandroid/Containers$Info;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->Root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 69
    if-nez p0, :cond_0

    return-object v0

    .line 70
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v6, p0, v2

    .line 71
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v4, "container.json"

    invoke-direct {v3, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/railty/cerfandroid/Containers;->ReadJson(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v3

    .line 73
    move-object v4, v3

    new-instance v3, Lcom/railty/cerfandroid/Containers$Info;

    move-object v5, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "container_name"

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    const-string v8, "container_last_run"

    const-wide/16 v9, 0x0

    invoke-virtual {v5, v8, v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    move-object v5, v7

    move-wide v7, v8

    invoke-direct/range {v3 .. v8}, Lcom/railty/cerfandroid/Containers$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V

    .line 73
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_2
    new-instance p0, Lcom/railty/cerfandroid/Containers$1;

    invoke-direct {p0}, Lcom/railty/cerfandroid/Containers$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 80
    return-object v0
.end method

.method static MarkRun(Landroid/content/Context;)V
    .locals 4

    .line 128
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->ActiveDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "container.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    invoke-static {v0}, Lcom/railty/cerfandroid/Containers;->ReadJson(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object p0

    .line 131
    :try_start_0
    const-string v1, "container_last_run"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 132
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/railty/cerfandroid/Containers;->WriteText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    nop

    .line 136
    return-void

    .line 133
    :catch_0
    move-exception p0

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static Migrate(Landroid/content/Context;)V
    .locals 11

    .line 164
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "containers"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 167
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "devices"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "devemu_ce6_KR"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "saved_states"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 171
    :cond_1
    const-string v2, "\uae30\ubcf8"

    invoke-static {p0, v2}, Lcom/railty/cerfandroid/Containers;->Create(Landroid/content/Context;Ljava/lang/String;)Lcom/railty/cerfandroid/Containers$Info;

    move-result-object v2

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 173
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 174
    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v0, v5

    .line 175
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "cerf-user.json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 176
    new-instance v7, Ljava/io/File;

    iget-object v9, v2, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    const-string v10, "container.json"

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/io/File;

    iget-object v9, v2, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    :goto_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 178
    :cond_3
    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 174
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 181
    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v4, v2, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    const-string v5, "state"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_5

    array-length v4, v1

    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v5, v1, v3

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 186
    :cond_5
    iget-object v0, v2, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/railty/cerfandroid/Containers;->SetActive(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method static ReadJson(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 1

    .line 320
    :try_start_0
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->ReadText(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    .line 322
    :catch_0
    move-exception p0

    .line 323
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method static ReadText(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    .line 328
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 329
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array v2, p0, [B

    .line 331
    const/4 v3, 0x0

    move v4, v3

    .line 332
    :goto_0
    if-ge v4, p0, :cond_2

    .line 333
    sub-int v5, p0, v4

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 334
    if-gez v5, :cond_1

    goto :goto_1

    .line 335
    :cond_1
    add-int/2addr v4, v5

    .line 336
    goto :goto_0

    .line 337
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 337
    return-object p0

    .line 329
    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 338
    :catch_0
    move-exception p0

    .line 339
    return-object v1
.end method

.method static RemapPaths(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 302
    nop

    .line 303
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 304
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 307
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 308
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 309
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3, p1, p2}, Lcom/railty/cerfandroid/Containers;->RemapPaths(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_2

    .line 310
    :cond_1
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    const/4 v1, 0x1

    .line 314
    :cond_2
    :goto_2
    goto :goto_1

    .line 315
    :cond_3
    return v1
.end method

.method static Rename(Lcom/railty/cerfandroid/Containers$Info;Ljava/lang/String;)V
    .locals 2

    .line 117
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    const-string v1, "container.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Lcom/railty/cerfandroid/Containers;->ReadJson(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object p0

    .line 120
    :try_start_0
    const-string v1, "container_name"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/railty/cerfandroid/Containers;->WriteText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    nop

    .line 125
    return-void

    .line 122
    :catch_0
    move-exception p0

    .line 123
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static RepairLegacyPaths(Landroid/content/Context;)V
    .locals 6

    .line 284
    sget-boolean v0, Lcom/railty/cerfandroid/Containers;->repaired:Z

    if-eqz v0, :cond_0

    return-void

    .line 285
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/railty/cerfandroid/Containers;->repaired:Z

    .line 286
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "devices"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "devemu_ce6_KR"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->Root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 289
    if-nez p0, :cond_1

    return-void

    .line 290
    :cond_1
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 291
    new-instance v4, Ljava/io/File;

    const-string v5, "container.json"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 293
    :cond_2
    invoke-static {v4}, Lcom/railty/cerfandroid/Containers;->ReadJson(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v5

    .line 295
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/railty/cerfandroid/Containers;->RemapPaths(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/railty/cerfandroid/Containers;->WriteText(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_3
    goto :goto_1

    .line 296
    :catch_0
    move-exception v3

    .line 290
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    :cond_4
    return-void
.end method

.method static Root(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "containers"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 42
    return-object v0
.end method

.method static SetActive(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->Root(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "active"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/railty/cerfandroid/Containers;->WriteText(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method static WriteText(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .line 344
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :try_start_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 348
    nop

    .line 349
    return-void

    .line 344
    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 346
    :catch_0
    move-exception p0

    .line 347
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static ZipTree(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 209
    if-nez p1, :cond_0

    return-void

    .line 210
    :cond_0
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 211
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/railty/cerfandroid/Containers;->ZipTree(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)V

    .line 215
    goto :goto_2

    .line 217
    :cond_1
    new-instance v6, Ljava/util/zip/ZipEntry;

    invoke-direct {v6, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 218
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 220
    :goto_1
    :try_start_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0, v0, v2, v4}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 221
    :cond_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 222
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 211
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 218
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p0

    .line 224
    :cond_3
    return-void
.end method
