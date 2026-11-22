.class final Lcom/railty/cerfandroid/QwertyKeypad$Key;
.super Ljava/lang/Object;
.source "QwertyKeypad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/railty/cerfandroid/QwertyKeypad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Key"
.end annotation


# instance fields
.field final color:I

.field final fnLabel:Ljava/lang/String;

.field final fnShifted:Z

.field final fnVk:I

.field final jamo:Ljava/lang/String;

.field final kind:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

.field final label:Ljava/lang/String;

.field final shifted:Z

.field final vk:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZIZILcom/railty/cerfandroid/QwertyKeypad$Kind;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->label:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->fnLabel:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->jamo:Ljava/lang/String;

    .line 63
    iput p4, p0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->vk:I

    .line 64
    iput-boolean p5, p0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->shifted:Z

    .line 65
    iput p6, p0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->fnVk:I

    .line 66
    iput-boolean p7, p0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->fnShifted:Z

    .line 67
    iput p8, p0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->color:I

    .line 68
    iput-object p9, p0, Lcom/railty/cerfandroid/QwertyKeypad$Key;->kind:Lcom/railty/cerfandroid/QwertyKeypad$Kind;

    .line 69
    return-void
.end method
