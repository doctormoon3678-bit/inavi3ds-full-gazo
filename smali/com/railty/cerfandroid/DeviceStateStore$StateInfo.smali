.class final Lcom/railty/cerfandroid/DeviceStateStore$StateInfo;
.super Ljava/lang/Object;
.source "DeviceStateStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/DeviceStateStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StateInfo"
.end annotation


# instance fields
.field final romLabel:Ljava/lang/String;

.field final savedAt:J

.field final sizeBytes:J

.field final stateFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;JJ)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/railty/cerfandroid/DeviceStateStore$StateInfo;->stateFile:Ljava/io/File;

    .line 33
    iput-object p2, p0, Lcom/railty/cerfandroid/DeviceStateStore$StateInfo;->romLabel:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/railty/cerfandroid/DeviceStateStore$StateInfo;->savedAt:J

    .line 35
    iput-wide p5, p0, Lcom/railty/cerfandroid/DeviceStateStore$StateInfo;->sizeBytes:J

    .line 36
    return-void
.end method
