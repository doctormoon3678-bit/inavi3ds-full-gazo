.class Lcom/railty/cerfandroid/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/railty/cerfandroid/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/railty/cerfandroid/MainActivity;


# direct methods
.method constructor <init>(Lcom/railty/cerfandroid/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 309
    iput-object p1, p0, Lcom/railty/cerfandroid/MainActivity$7;->this$0:Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 311
    iget-object v0, p0, Lcom/railty/cerfandroid/MainActivity$7;->this$0:Lcom/railty/cerfandroid/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/railty/cerfandroid/MainActivity$7;->this$0:Lcom/railty/cerfandroid/MainActivity;

    const-class v3, Lcom/railty/cerfandroid/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    const/high16 v2, 0x10020000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 311
    invoke-virtual {v0, v1}, Lcom/railty/cerfandroid/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 314
    return-void
.end method
