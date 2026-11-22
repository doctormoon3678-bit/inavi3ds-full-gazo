.class Lcom/railty/cerfandroid/AndroidGpsNmea$7;
.super Ljava/lang/Object;
.source "AndroidGpsNmea.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/AndroidGpsNmea;->ShowStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/AndroidGpsNmea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$7;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 301
    iget-object p1, p0, Lcom/railty/cerfandroid/AndroidGpsNmea$7;->this$0:Lcom/railty/cerfandroid/AndroidGpsNmea;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/railty/cerfandroid/AndroidGpsNmea;->access$502(Lcom/railty/cerfandroid/AndroidGpsNmea;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 302
    return-void
.end method
