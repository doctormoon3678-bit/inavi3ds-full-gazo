.class final Lcom/railty/cerfandroid/DeviceSettings;
.super Ljava/lang/Object;
.source "DeviceSettings.java"


# static fields
.field static final DEFAULT_BPP:I = 0x10

.field static final DEFAULT_HEIGHT:I = 0x1e0

.field static final DEFAULT_WIDTH:I = 0x280

.field static final DEVICE:Ljava/lang/String; = "devemu_ce6_KR"


# instance fields
.field bpp:I

.field cameraLink:Z

.field cellEnabled:Z

.field cfImagePath:Ljava/lang/String;

.field clipboardShare:Z

.field cpuRateMultiplier:D

.field dpi:I

.field extraDllsEnabled:Z

.field gaNicEnabled:Z

.field glesEnabled:Z

.field height:I

.field hideImeState:Z

.field hideTaskbar:Z

.field nledLink:Z

.field oemName:Ljava/lang/String;

.field operatorName:Ljava/lang/String;

.field pcmciaCard:Ljava/lang/String;

.field phoneKeypad:Z

.field portrait:Z

.field qwertyKeypad:Z

.field romPath:Ljava/lang/String;

.field shareFolder:Ljava/lang/String;

.field shareName:Ljava/lang/String;

.field sizeExplicit:Z

.field throttleMultiplier:D

.field timeSync:Z

.field touchPanelInput:Z

.field width:I


# direct methods
.method constructor <init>()V
    .locals 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    .line 23
    const-string v1, "android_gnss"

    iput-object v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->cfImagePath:Ljava/lang/String;

    .line 25
    const/16 v1, 0x280

    iput v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->width:I

    .line 26
    const/16 v1, 0x1e0

    iput v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->height:I

    .line 27
    const/16 v1, 0x10

    iput v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->bpp:I

    .line 28
    const/4 v1, 0x0

    iput v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    .line 29
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/railty/cerfandroid/DeviceSettings;->throttleMultiplier:D

    .line 30
    iput-wide v2, p0, Lcom/railty/cerfandroid/DeviceSettings;->cpuRateMultiplier:D

    .line 31
    iput-boolean v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->sizeExplicit:Z

    .line 32
    iput-boolean v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    .line 33
    iput-boolean v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->phoneKeypad:Z

    .line 34
    iput-boolean v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->qwertyKeypad:Z

    .line 35
    iput-boolean v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->hideTaskbar:Z

    .line 36
    iput-boolean v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->hideImeState:Z

    .line 37
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/railty/cerfandroid/DeviceSettings;->timeSync:Z

    .line 38
    iput-boolean v2, p0, Lcom/railty/cerfandroid/DeviceSettings;->clipboardShare:Z

    .line 39
    iput-boolean v2, p0, Lcom/railty/cerfandroid/DeviceSettings;->cameraLink:Z

    .line 40
    iput-boolean v2, p0, Lcom/railty/cerfandroid/DeviceSettings;->nledLink:Z

    .line 41
    iput-boolean v2, p0, Lcom/railty/cerfandroid/DeviceSettings;->cellEnabled:Z

    .line 42
    iput-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->operatorName:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/railty/cerfandroid/DeviceSettings;->touchPanelInput:Z

    .line 44
    iput-boolean v2, p0, Lcom/railty/cerfandroid/DeviceSettings;->glesEnabled:Z

    .line 45
    iput-boolean v2, p0, Lcom/railty/cerfandroid/DeviceSettings;->extraDllsEnabled:Z

    .line 46
    iput-boolean v2, p0, Lcom/railty/cerfandroid/DeviceSettings;->gaNicEnabled:Z

    .line 47
    iput-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->oemName:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    .line 49
    const-string v0, "CERF Storage"

    iput-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    return-void
.end method

.method static DefaultShareFolder(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 60
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string v1, "CERF Storage"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    return-object v0
.end method

.method static DeviceDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/railty/cerfandroid/Containers;->ActiveDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static Load(Landroid/content/Context;)Lcom/railty/cerfandroid/DeviceSettings;
    .locals 8

    .line 66
    const-string v0, "configurable_screen_height"

    const-string v1, "configurable_screen_width"

    new-instance v2, Lcom/railty/cerfandroid/DeviceSettings;

    invoke-direct {v2}, Lcom/railty/cerfandroid/DeviceSettings;-><init>()V

    .line 67
    invoke-static {p0}, Lcom/railty/cerfandroid/DeviceSettings;->UserJson(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 68
    invoke-static {v3}, Lcom/railty/cerfandroid/Containers;->ReadJson(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v4

    .line 69
    const-string v5, "container_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    const-string v5, "container_last_run"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 72
    invoke-static {p0}, Lcom/railty/cerfandroid/DeviceSettings;->DefaultShareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    .line 73
    return-object v2

    .line 76
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/railty/cerfandroid/DeviceSettings;->ReadText(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    const-string v3, "rom"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const-string v5, ""

    if-eqz v3, :cond_1

    :try_start_1
    const-string v6, "primary"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    .line 79
    :cond_1
    const-string v3, "board"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 80
    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 81
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 82
    const/16 v7, 0x280

    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->width:I

    .line 83
    const/16 v1, 0x1e0

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/railty/cerfandroid/DeviceSettings;->height:I

    .line 84
    iput-boolean v6, v2, Lcom/railty/cerfandroid/DeviceSettings;->sizeExplicit:Z

    .line 86
    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "configurable_screen_bpp"

    const/16 v1, 0x10

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/railty/cerfandroid/DeviceSettings;->bpp:I

    .line 87
    :cond_3
    const/4 v0, 0x0

    if-eqz v3, :cond_4

    const-string v1, "configurable_screen_dpi"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    .line 88
    :cond_4
    const-string v1, "screen_orientation"

    const-string v3, "landscape"

    invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "portrait"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    .line 89
    const-string v1, "phone_keypad"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->phoneKeypad:Z

    .line 90
    const-string v1, "qwerty_keypad"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->qwertyKeypad:Z

    .line 91
    const-string v1, "hide_taskbar"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->hideTaskbar:Z

    .line 92
    const-string v1, "hide_ime_state"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->hideImeState:Z

    .line 93
    const-string v1, "time_sync"

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->timeSync:Z

    .line 94
    const-string v1, "clipboard_share"

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->clipboardShare:Z

    .line 95
    const-string v1, "camera_link"

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->cameraLink:Z

    .line 96
    const-string v1, "nled_link"

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->nledLink:Z

    .line 97
    const-string v1, "cellular_modem_enabled"

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->cellEnabled:Z

    .line 98
    const-string v1, "operator_name"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->operatorName:Ljava/lang/String;

    .line 99
    const-string v1, "touch_panel_input"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v2, Lcom/railty/cerfandroid/DeviceSettings;->touchPanelInput:Z

    .line 100
    const-string v0, "gles_bridge_enabled"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v2, Lcom/railty/cerfandroid/DeviceSettings;->glesEnabled:Z

    .line 101
    const-string v0, "extra_windows_dlls_enabled"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v2, Lcom/railty/cerfandroid/DeviceSettings;->extraDllsEnabled:Z

    .line 102
    const-string v0, "guest_additions_nic"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v2, Lcom/railty/cerfandroid/DeviceSettings;->gaNicEnabled:Z

    .line 103
    const-string v0, "oem_name"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/railty/cerfandroid/DeviceSettings;->oemName:Ljava/lang/String;

    .line 104
    const-string v0, "guest_additions"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_5

    const-string v1, "share_folder"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v5

    :goto_0
    iput-object v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    .line 106
    if-eqz v0, :cond_6

    const-string v1, "share_name"

    const-string v3, "CERF Storage"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    .line 107
    :cond_6
    const-string v0, "throttle_multiplier"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v2, Lcom/railty/cerfandroid/DeviceSettings;->throttleMultiplier:D

    .line 108
    const-string v0, "cpu_rate_multiplier"

    invoke-virtual {v4, v0, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, v2, Lcom/railty/cerfandroid/DeviceSettings;->cpuRateMultiplier:D

    .line 109
    const-string v0, "pcmcia"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_7

    const-string v1, "boot_card"

    const-string v3, "android_gnss"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    .line 111
    :cond_7
    if-eqz v0, :cond_8

    const-string v1, "cf_image"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/railty/cerfandroid/DeviceSettings;->cfImagePath:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    :cond_8
    goto :goto_2

    .line 112
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 113
    :goto_1
    invoke-static {p0}, Lcom/railty/cerfandroid/DeviceSettings;->DefaultShareFolder(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    .line 115
    :goto_2
    return-object v2
.end method

.method private static ReadText(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 172
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array v1, p0, [B

    .line 173
    const/4 v2, 0x0

    move v3, v2

    .line 174
    :goto_0
    if-ge v3, p0, :cond_1

    .line 175
    sub-int v4, p0, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 176
    if-gez v4, :cond_0

    goto :goto_1

    .line 177
    :cond_0
    add-int/2addr v3, v4

    .line 178
    goto :goto_0

    .line 179
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 179
    return-object p0

    .line 171
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method static UserJson(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/railty/cerfandroid/DeviceSettings;->DeviceDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "container.json"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method Save(Landroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    :try_start_0
    invoke-static {p1}, Lcom/railty/cerfandroid/DeviceSettings;->UserJson(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 121
    invoke-static {p1}, Lcom/railty/cerfandroid/Containers;->ReadJson(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v0

    .line 122
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 123
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "container_name"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "container_last_run"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    move v4, v5

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v7, v3, v4

    .line 124
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rom"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "primary"

    iget-object v7, p0, Lcom/railty/cerfandroid/DeviceSettings;->romPath:Ljava/lang/String;

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    :cond_2
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->portrait:Z

    if-eqz v0, :cond_3

    const-string v0, "screen_orientation"

    const-string v3, "portrait"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_3
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->phoneKeypad:Z

    if-eqz v0, :cond_4

    const-string v0, "phone_keypad"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 128
    :cond_4
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->qwertyKeypad:Z

    if-eqz v0, :cond_5

    const-string v0, "qwerty_keypad"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 129
    :cond_5
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->hideTaskbar:Z

    if-eqz v0, :cond_6

    const-string v0, "hide_taskbar"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 130
    :cond_6
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->hideImeState:Z

    if-eqz v0, :cond_7

    const-string v0, "hide_ime_state"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 131
    :cond_7
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->timeSync:Z

    if-nez v0, :cond_8

    const-string v0, "time_sync"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 132
    :cond_8
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->clipboardShare:Z

    if-nez v0, :cond_9

    const-string v0, "clipboard_share"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 133
    :cond_9
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->cameraLink:Z

    if-nez v0, :cond_a

    const-string v0, "camera_link"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 134
    :cond_a
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->nledLink:Z

    if-nez v0, :cond_b

    const-string v0, "nled_link"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 135
    :cond_b
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->cellEnabled:Z

    if-nez v0, :cond_c

    const-string v0, "cellular_modem_enabled"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 136
    :cond_c
    iget-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->operatorName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "operator_name"

    iget-object v3, p0, Lcom/railty/cerfandroid/DeviceSettings;->operatorName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_d
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->touchPanelInput:Z

    if-eqz v0, :cond_e

    const-string v0, "touch_panel_input"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 138
    :cond_e
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->glesEnabled:Z

    if-nez v0, :cond_f

    const-string v0, "gles_bridge_enabled"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 139
    :cond_f
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->extraDllsEnabled:Z

    if-nez v0, :cond_10

    const-string v0, "extra_windows_dlls_enabled"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 140
    :cond_10
    iget-boolean v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->gaNicEnabled:Z

    if-nez v0, :cond_11

    const-string v0, "guest_additions_nic"

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    :cond_11
    iget-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->oemName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "oem_name"

    iget-object v3, p0, Lcom/railty/cerfandroid/DeviceSettings;->oemName:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    :cond_12
    iget-wide v3, p0, Lcom/railty/cerfandroid/DeviceSettings;->throttleMultiplier:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_13

    const-string v0, "throttle_multiplier"

    iget-wide v3, p0, Lcom/railty/cerfandroid/DeviceSettings;->throttleMultiplier:D

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 143
    :cond_13
    iget-wide v3, p0, Lcom/railty/cerfandroid/DeviceSettings;->cpuRateMultiplier:D

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_14

    const-string v0, "cpu_rate_multiplier"

    iget-wide v3, p0, Lcom/railty/cerfandroid/DeviceSettings;->cpuRateMultiplier:D

    invoke-virtual {v1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 144
    :cond_14
    iget-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    const-string v3, "android_gnss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->cfImagePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 145
    :cond_15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "boot_card"

    iget-object v4, p0, Lcom/railty/cerfandroid/DeviceSettings;->pcmciaCard:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 146
    iget-object v3, p0, Lcom/railty/cerfandroid/DeviceSettings;->cfImagePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    const-string v3, "cf_image"

    iget-object v4, p0, Lcom/railty/cerfandroid/DeviceSettings;->cfImagePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_16
    const-string v3, "pcmcia"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 150
    iget-boolean v3, p0, Lcom/railty/cerfandroid/DeviceSettings;->sizeExplicit:Z

    if-eqz v3, :cond_18

    .line 151
    const-string v3, "configurable_screen_width"

    iget v4, p0, Lcom/railty/cerfandroid/DeviceSettings;->width:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    const-string v3, "configurable_screen_height"

    iget v4, p0, Lcom/railty/cerfandroid/DeviceSettings;->height:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 154
    :cond_18
    iget v3, p0, Lcom/railty/cerfandroid/DeviceSettings;->bpp:I

    const/16 v4, 0x10

    if-eq v3, v4, :cond_19

    const-string v3, "configurable_screen_bpp"

    iget v4, p0, Lcom/railty/cerfandroid/DeviceSettings;->bpp:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    :cond_19
    iget v3, p0, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    if-lez v3, :cond_1a

    const-string v3, "configurable_screen_dpi"

    iget v4, p0, Lcom/railty/cerfandroid/DeviceSettings;->dpi:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    :cond_1a
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1b

    const-string v3, "board"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    :cond_1b
    iget-object v0, p0, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 158
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "share_folder"

    iget-object v4, p0, Lcom/railty/cerfandroid/DeviceSettings;->shareFolder:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 159
    iget-object v3, p0, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    const-string v4, "CERF Storage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "share_name"

    iget-object v4, p0, Lcom/railty/cerfandroid/DeviceSettings;->shareName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_1c
    const-string v3, "guest_additions"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :cond_1d
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :try_start_1
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 167
    nop

    .line 168
    return-void

    .line 162
    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 165
    :catch_0
    move-exception p1

    .line 166
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
