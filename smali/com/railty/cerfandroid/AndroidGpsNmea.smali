.class final Lcom/railty/cerfandroid/AndroidGpsNmea;
.super Ljava/lang/Object;
.source "AndroidGpsNmea.java"


# static fields
.field static final REQUEST_LOCATION:I = 0x47


# instance fields
.field private final activity:Landroid/app/Activity;

.field private asked:Z

.field private bytes:J

.field private enabled:Z

.field private generation:I

.field private gpsCardSelected:Z

.field private final handler:Landroid/os/Handler;

.field private lastRealGgaUtc:Ljava/lang/String;

.field private lastReceived:J

.field private locationListener:Landroid/location/LocationListener;

.field private final manager:Landroid/location/LocationManager;

.field private messages:J

.field private nmeaListener:Landroid/location/OnNmeaMessageListener;

.field private pendingSyntheticGga:Ljava/lang/Runnable;

.field private pendingSyntheticUtc:Ljava/lang/String;

.field private registered:Z

.field private rejected:J

.field private resumed:Z

.field private state:Ljava/lang/String;

.field private statusDialog:Landroid/app/AlertDialog;

.field private final statusPoll:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->handler:Landroid/os/Handler;

    .line 36
    const-string v0, "\ub300\uae30"

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->state:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->lastRealGgaUtc:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticUtc:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/railty/cerfandroid/AndroidGpsNmea$1;

    invoke-direct {v0, p0}, Lcom/railty/cerfandroid/AndroidGpsNmea$1;-><init>(Lcom/railty/cerfandroid/AndroidGpsNmea;)V

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusPoll:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->activity:Landroid/app/Activity;

    .line 46
    iput-boolean p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->gpsCardSelected:Z

    .line 47
    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->manager:Landroid/location/LocationManager;

    .line 48
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "gps_nmea"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->enabled:Z

    .line 49
    return-void
.end method

.method private ForwardNmea(Ljava/lang/String;I)V
    .locals 3

    .line 213
    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->NormalizeNmea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    if-nez p1, :cond_0

    iget-wide p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->rejected:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->rejected:J

    return-void

    .line 215
    :cond_0
    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->SentenceType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string v1, "GGA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->UtcField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->lastRealGgaUtc:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticGga:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticUtc:Ljava/lang/String;

    iget-object v2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->lastRealGgaUtc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticGga:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticGga:Ljava/lang/Runnable;

    .line 221
    const-string v1, ""

    iput-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticUtc:Ljava/lang/String;

    .line 224
    :cond_1
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->SendNmeaLine(Ljava/lang/String;)V

    .line 225
    const-string v1, "RMC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 227
    :cond_2
    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->GgaFromRmc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    if-nez v0, :cond_3

    return-void

    .line 229
    :cond_3
    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->UtcField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->lastRealGgaUtc:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 231
    :cond_4
    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticGga:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticGga:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    :cond_5
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticUtc:Ljava/lang/String;

    .line 233
    new-instance v1, Lcom/railty/cerfandroid/AndroidGpsNmea$4;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/railty/cerfandroid/AndroidGpsNmea$4;-><init>(Lcom/railty/cerfandroid/AndroidGpsNmea;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticGga:Ljava/lang/Runnable;

    .line 241
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticGga:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 242
    return-void
.end method

.method private static GgaFromRmc(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 194
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    const-string v2, ","

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 195
    array-length v0, p0

    const/4 v3, 0x7

    if-lt v0, v3, :cond_2

    const/4 v0, 0x2

    aget-object v0, p0, v0

    const-string v3, "A"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    aget-object v3, p0, v0

    .line 196
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x4

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x5

    aget-object v5, p0, v4

    .line 197
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x6

    aget-object v6, p0, v5

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_1

    .line 198
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GPGGA,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v1, p0, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v0, p0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p0, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p0, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object p0, p0, v5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ",1,12,1.0,0.0,M,0.0,M,,"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 200
    nop

    .line 201
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    shr-int/lit8 v0, v1, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->HexDigit(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    and-int/lit8 v0, v1, 0xf

    .line 203
    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->HexDigit(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 202
    return-object p0

    .line 197
    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private HasPermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static HexDigit(I)C
    .locals 1

    .line 181
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x30

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x41

    sub-int/2addr p0, v0

    :goto_0
    int-to-char p0, p0

    return p0
.end method

.method private static NormalizeNmea(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 159
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 160
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x24

    if-eq v2, v3, :cond_1

    goto/16 :goto_4

    .line 162
    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 163
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7f

    if-le v3, v4, :cond_2

    return-object v0

    .line 162
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    :cond_3
    const/16 v2, 0x2a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 166
    if-ltz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x5

    if-lt v2, v4, :cond_a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x47

    if-eq v2, v5, :cond_5

    goto/16 :goto_3

    .line 168
    :cond_5
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x4e

    const/4 v6, 0x2

    const/16 v7, 0x50

    if-ne v2, v5, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 169
    :cond_6
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v7, :cond_7

    return-object v0

    .line 170
    :cond_7
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 171
    const-string v3, "RMC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "GGA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 172
    const-string v3, "GSV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "GSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return-object v0

    .line 174
    :cond_8
    nop

    .line 175
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 176
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->HexDigit(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    and-int/lit8 v0, v0, 0xf

    .line 177
    invoke-static {v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->HexDigit(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 176
    return-object p0

    .line 167
    :cond_a
    :goto_3
    return-object v0

    .line 161
    :cond_b
    :goto_4
    return-object v0
.end method

.method private SendNmeaLine(Ljava/lang/String;)V
    .locals 4

    .line 207
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 208
    iget-wide v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->bytes:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->bytes:J

    .line 209
    invoke-static {p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->nativePush([B)Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->rejected:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->rejected:J

    .line 210
    :cond_0
    return-void
.end method

.method private static SentenceType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private Start()V
    .locals 10

    .line 97
    iget-boolean v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->resumed:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->registered:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 98
    :cond_0
    iget-boolean v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->gpsCardSelected:Z

    if-nez v0, :cond_1

    const-string v0, "\ubd80\ud305 PCMCIA \uce74\ub4dc\uac00 GPS\uac00 \uc544\ub2d8"

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->state:Ljava/lang/String;

    return-void

    .line 99
    :cond_1
    iget-boolean v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->enabled:Z

    if-nez v0, :cond_2

    const-string v0, "\uaebc\uc9d0"

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->state:Ljava/lang/String;

    return-void

    .line 100
    :cond_2
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->HasPermission()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    .line 101
    const-string v0, "\uc815\ud655\ud55c \uc704\uce58 \uad8c\ud55c \ud544\uc694"

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->state:Ljava/lang/String;

    .line 102
    iget-boolean v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->asked:Z

    if-nez v0, :cond_3

    .line 103
    iput-boolean v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->asked:Z

    .line 104
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->activity:Landroid/app/Activity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v4, v2, v3

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v3, v2, v1

    const/16 v1, 0x47

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 108
    :cond_3
    return-void

    .line 110
    :cond_4
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->manager:Landroid/location/LocationManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->manager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    const-string v2, "gps"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 114
    :cond_5
    iget v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->generation:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->generation:I

    .line 115
    new-instance v3, Lcom/railty/cerfandroid/AndroidGpsNmea$2;

    invoke-direct {v3, p0, v0}, Lcom/railty/cerfandroid/AndroidGpsNmea$2;-><init>(Lcom/railty/cerfandroid/AndroidGpsNmea;I)V

    iput-object v3, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->nmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 128
    new-instance v3, Lcom/railty/cerfandroid/AndroidGpsNmea$3;

    invoke-direct {v3, p0, v0}, Lcom/railty/cerfandroid/AndroidGpsNmea$3;-><init>(Lcom/railty/cerfandroid/AndroidGpsNmea;I)V

    iput-object v3, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->locationListener:Landroid/location/LocationListener;

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->manager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->nmeaListener:Landroid/location/OnNmeaMessageListener;

    iget-object v4, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 143
    const-string v0, "NMEA \ub4f1\ub85d \uc2e4\ud328"

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->state:Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Stop()V

    .line 145
    return-void

    .line 147
    :cond_6
    iget-object v3, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->manager:Landroid/location/LocationManager;

    const-string v4, "gps"

    iget-object v8, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->locationListener:Landroid/location/LocationListener;

    .line 148
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    .line 147
    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 149
    iput-boolean v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->registered:Z

    .line 150
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->manager:Landroid/location/LocationManager;

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    const-string v0, "NMEA \ub300\uae30"

    goto :goto_0

    :cond_7
    const-string v0, "Android \uc704\uce58 \uae30\ub2a5 \uaebc\uc9d0"

    :goto_0
    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->state:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_2

    .line 152
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 153
    :goto_1
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Stop()V

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GPS \uc2dc\uc791 \uc2e4\ud328: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->state:Ljava/lang/String;

    .line 156
    :goto_2
    return-void

    .line 111
    :cond_8
    :goto_3
    const-string v0, "GNSS \ubbf8\uc9c0\uc6d0 \uae30\uae30"

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->state:Ljava/lang/String;

    .line 112
    return-void

    .line 97
    :cond_9
    :goto_4
    return-void
.end method

.method private StatusText()Ljava/lang/String;
    .locals 3

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nAndroid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->messages:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ubb38\uc7a5 / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " B\n\uc804\ub2ec \uac70\uc808: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->rejected:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ubb38\uc7a5\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    invoke-static {}, Lcom/railty/cerfandroid/AndroidGpsNmea;->nativeStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\nCE PCMCIA: COM2\n\uc571\uc774 \uc804\uba74\uc5d0 \uc788\ub294 \ub3d9\uc548 GPS\ub97c \uc804\ub2ec\ud569\ub2c8\ub2e4."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    return-object v0
.end method

.method private Stop()V
    .locals 3

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->registered:Z

    .line 246
    iget v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->generation:I

    .line 247
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticGga:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticGga:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticGga:Ljava/lang/Runnable;

    .line 249
    const-string v1, ""

    iput-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticUtc:Ljava/lang/String;

    .line 250
    iput-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->lastRealGgaUtc:Ljava/lang/String;

    .line 251
    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->manager:Landroid/location/LocationManager;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->nmeaListener:Landroid/location/OnNmeaMessageListener;

    if-eqz v1, :cond_1

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->manager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->nmeaListener:Landroid/location/OnNmeaMessageListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    :goto_0
    nop

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->locationListener:Landroid/location/LocationListener;

    if-eqz v1, :cond_2

    .line 257
    :try_start_1
    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->manager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 258
    :catch_1
    move-exception v1

    :goto_1
    nop

    .line 261
    :cond_2
    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->nmeaListener:Landroid/location/OnNmeaMessageListener;

    .line 262
    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->locationListener:Landroid/location/LocationListener;

    .line 263
    invoke-static {}, Lcom/railty/cerfandroid/AndroidGpsNmea;->nativeClear()V

    .line 264
    return-void
.end method

.method private static UtcField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 189
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 190
    array-length v0, p0

    if-le v0, v1, :cond_0

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static synthetic access$000(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->resumed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->registered:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/railty/cerfandroid/AndroidGpsNmea;J)J
    .locals 0

    .line 21
    iput-wide p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->lastReceived:J

    return-wide p1
.end method

.method static synthetic access$1104(Lcom/railty/cerfandroid/AndroidGpsNmea;)J
    .locals 4

    .line 21
    iget-wide v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->rejected:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->rejected:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/String;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/railty/cerfandroid/AndroidGpsNmea;->ForwardNmea(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300()V
    .locals 0

    .line 21
    invoke-static {}, Lcom/railty/cerfandroid/AndroidGpsNmea;->nativeClear()V

    return-void
.end method

.method static synthetic access$1402(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticGga:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->pendingSyntheticUtc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/railty/cerfandroid/AndroidGpsNmea;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->lastRealGgaUtc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/railty/cerfandroid/AndroidGpsNmea;->SendNmeaLine(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/railty/cerfandroid/AndroidGpsNmea;)Landroid/app/Activity;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->enabled:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/railty/cerfandroid/AndroidGpsNmea;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->enabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/railty/cerfandroid/AndroidGpsNmea;)Z
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->HasPermission()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2002(Lcom/railty/cerfandroid/AndroidGpsNmea;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->asked:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/railty/cerfandroid/AndroidGpsNmea;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Start()V

    return-void
.end method

.method static synthetic access$300(Lcom/railty/cerfandroid/AndroidGpsNmea;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Stop()V

    return-void
.end method

.method static synthetic access$402(Lcom/railty/cerfandroid/AndroidGpsNmea;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->state:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/railty/cerfandroid/AndroidGpsNmea;)Landroid/app/AlertDialog;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$502(Lcom/railty/cerfandroid/AndroidGpsNmea;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/railty/cerfandroid/AndroidGpsNmea;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->StatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/railty/cerfandroid/AndroidGpsNmea;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/railty/cerfandroid/AndroidGpsNmea;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->generation:I

    return p0
.end method

.method static synthetic access$904(Lcom/railty/cerfandroid/AndroidGpsNmea;)J
    .locals 4

    .line 21
    iget-wide v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->messages:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->messages:J

    return-wide v0
.end method

.method private static native nativeClear()V
.end method

.method private static native nativePush([B)Z
.end method

.method private static native nativeStatus()Ljava/lang/String;
.end method


# virtual methods
.method Pause()V
    .locals 2

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->resumed:Z

    .line 73
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusPoll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Stop()V

    .line 75
    return-void
.end method

.method PermissionResult()V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->resumed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Start()V

    .line 79
    :cond_0
    return-void
.end method

.method Resume()V
    .locals 2

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->resumed:Z

    .line 66
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Start()V

    .line 67
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusPoll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusPoll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method SetCardSelected(Z)V
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->gpsCardSelected:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 83
    :cond_0
    iput-boolean p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->gpsCardSelected:Z

    .line 84
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Stop()V

    .line 85
    if-eqz p1, :cond_1

    const-string p1, "NMEA \ub300\uae30"

    goto :goto_0

    :cond_1
    const-string p1, "\ubd80\ud305 PCMCIA \uce74\ub4dc\uac00 GPS\uac00 \uc544\ub2d8"

    :goto_0
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->state:Ljava/lang/String;

    .line 86
    iget-boolean p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->resumed:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->Start()V

    .line 87
    :cond_2
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 88
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->StatusText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 89
    :cond_3
    return-void
.end method

.method ShowStatus()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 275
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 276
    const-string v1, "GPS \u2192 PCMCIA COM \uc124\uc815"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 277
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->StatusText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 278
    iget-boolean v1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->enabled:Z

    if-eqz v1, :cond_1

    const-string v1, "GPS \ub044\uae30"

    goto :goto_0

    :cond_1
    const-string v1, "GPS \ucf1c\uae30"

    :goto_0
    new-instance v2, Lcom/railty/cerfandroid/AndroidGpsNmea$6;

    invoke-direct {v2, p0}, Lcom/railty/cerfandroid/AndroidGpsNmea$6;-><init>(Lcom/railty/cerfandroid/AndroidGpsNmea;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 288
    invoke-direct {p0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->HasPermission()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\uc704\uce58 \uc124\uc815"

    goto :goto_1

    :cond_2
    const-string v1, "\uc571 \uad8c\ud55c \uc124\uc815"

    :goto_1
    new-instance v2, Lcom/railty/cerfandroid/AndroidGpsNmea$5;

    invoke-direct {v2, p0}, Lcom/railty/cerfandroid/AndroidGpsNmea$5;-><init>(Lcom/railty/cerfandroid/AndroidGpsNmea;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 297
    const-string v1, "\ub2eb\uae30"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusDialog:Landroid/app/AlertDialog;

    .line 299
    iget-object v0, p0, Lcom/railty/cerfandroid/AndroidGpsNmea;->statusDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/railty/cerfandroid/AndroidGpsNmea$7;

    invoke-direct {v1, p0}, Lcom/railty/cerfandroid/AndroidGpsNmea$7;-><init>(Lcom/railty/cerfandroid/AndroidGpsNmea;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 304
    return-void
.end method
