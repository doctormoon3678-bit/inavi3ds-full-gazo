.class final Lcom/railty/cerfandroid/Containers$Info;
.super Ljava/lang/Object;
.source "Containers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/Containers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Info"
.end annotation


# instance fields
.field final dir:Ljava/io/File;

.field final id:Ljava/lang/String;

.field final lastRun:J

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/railty/cerfandroid/Containers$Info;->id:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/railty/cerfandroid/Containers$Info;->name:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/railty/cerfandroid/Containers$Info;->dir:Ljava/io/File;

    .line 33
    iput-wide p4, p0, Lcom/railty/cerfandroid/Containers$Info;->lastRun:J

    .line 34
    return-void
.end method
