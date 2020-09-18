#!/bin/bash

#V4R29

if ls /lib64/firefox/ | grep mozilla.cfg ; then
    echo "mozilla.cfg file is there"
else touch /lib64/firefox/mozilla.cfg
fi

# V-15768
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("security.default_personal_cert", Ask Every Time);' ; then
    echo "V-15768 is not a finding"
else
    echo 'lockPref("security.default_personal_cert", Ask Every Time);' >> /lib64/firefox/mozilla.cfg
    echo "V-15768 is not a finding"
fi

#V-15771
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("network.protocol-handler.external.shell", false);' ; then
    echo "V-15768 is not a finding"
else
    echo 'lockPref("network.protocol-handler.external.shell", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-15771 is not a finding"
fi

#V-15774
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("browser.formfill.enable", false);' ; then
    echo "V-15768 is not a finding"
else
    echo 'lockPref("browser.formfill.enable", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-15774 is not a finding"
fi

#V-15775
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("signon.autofillForms", false);' ; then
    echo "V-15768 is not a finding"
else
    echo 'lockPref("signon.autofillForms", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-15775 is not a finding"
fi

#V-15776
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("signon.rememberSignons", false);' ; then
    echo "V-15768 is not a finding"
else
    echo 'lockPref("signon.rememberSignons", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-15776 is not a finding"
fi

#V-15778
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("dom.disable_window_open_feature.status", true);' ; then
    echo "V-15768 is not a finding"
else
    echo 'lockPref("dom.disable_window_open_feature.status", true);' >> /lib64/firefox/mozilla.cfg
    echo "V-15778 is not a finding"
fi

#V-15779
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("dom.disable_window_move_resize", true);' ; then
    echo "V-15779 is not a finding"
else
    echo 'lockPref("dom.disable_window_move_resize", true);' >> /lib64/firefox/mozilla.cfg
    echo "V-15779 is not a finding"
fi

#V-15983
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("security.tls.version.min", 2);' && cat /lib64/firefox/mozilla.cfg | grep 'lockPref("security.tls.version.max", 4);'; then
    echo "V-15983 is not a finding"
else
    echo 'lockPref("lockPref("security.tls.version.min", 2);' >> /lib64/firefox/mozilla.cfg
    echo 'lockPref("lockPref("security.tls.version.max", 4);' >> /lib64/firefox/mozilla.cfg
    echo "V-15983 is not a finding"
fi

#V-15985
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("dom.disable_window_flip", true);' ; then
    echo "V-15985 is not a finding"
else
    echo 'lockPref("dom.disable_window_flip", true);' >> /lib64/firefox/mozilla.cfg
    echo "V-15985 is not a finding"
fi

#V-15986
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("dom.event.contextmenu.enabled", false);' ; then
    echo "V-15986 is not a finding"
else
    echo 'lockPref("dom.event.contextmenu.enabled", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-15986 is not a finding"
fi

#V-15988
firefox --version; echo "V-15988 is not a finding"

#V-15742
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("extensions.update.enabled", false);' ; then
    echo "V-15742 is not a finding"
else
    echo 'lockPref("extensions.update.enabled", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-159742 is not a finding"
fi

#V-15744
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("browser.search.update", false);' ; then
    echo "V-15744 is not a finding"
else
    echo 'lockPref("browser.search.update", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-159744 is not a finding"
fi

#V-64891
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("xpinstall.enabled", false);' ; then
    echo "V-64891 is not a finding"
else
    echo 'lockPref("xpinstall.enabled", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-64891 is not a finding"
fi

#V-79053
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("datareporting.policy.dataSubmissionEnabled", false);' ; then
    echo "V-79053 is not a finding"
else
    echo 'lockPref("datareporting.policy.dataSubmissionEnabled", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-79053 is not a finding"
fi

#V-97529
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("devtools.policy.disabled", true);' ; then
    echo "V-97529 is not a finding"
else
    echo 'lockPref("devtools.policy.disabled", true);' >> /lib64/firefox/mozilla.cfg
    echo "V-97529 is not a finding"
fi

#V-102875
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("toolkit.telemetry.enabled", false);' ; then
    echo "V-102875 is not a finding"
else
    echo 'lockPref("toolkit.telemetry.enabled", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-102875 is not a finding"
fi

#V-102879
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("privacy.trackingprotection.fingerprinting.enabled", true);' ; then
    echo "V-102879 is not a finding"
else
    echo 'lockPref("privacy.trackingprotection.fingerprinting.enabled", true);' >> /lib64/firefox/mozilla.cfg
    echo "V-102879 is not a finding"
fi

#V-102881
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("privacy.trackingprotection.cryptomining.enabled", true);' ; then
    echo "V-102881 is not a finding"
else
    echo 'lockPref("privacy.trackingprotection.cryptomining.enabled", true);' >> /lib64/firefox/mozilla.cfg
    echo "V-102881 is not a finding"
fi

#V-102883
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("browser.contentblocking.category", strict);' ; then
    echo "V-102883 is not a finding"
else
    echo 'lockPref("browser.contentblocking.category", strict);' >> /lib64/firefox/mozilla.cfg
    echo "V-102883 is not a finding"
fi

#V-102885
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("extensions.htmlaboutaddons.recommendations.enabled", false);' ; then
    echo "V-102885 is not a finding"
else
    echo 'lockPref("extensions.htmlaboutaddons.recommendations.enabled", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-102885 is not a finding"
fi

#V-102887
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("browser.newtabpage.activity-stream.enabled", false);' ; then
    echo "V-102887 is not a finding"
else
    echo 'lockPref("browser.newtabpage.activity-stream.enabled", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-102887 is not a finding"
fi

#V-102889
if cat /lib64/firefox/mozilla.cfg | grep 'lockPref("security.ssl3.rsa_des_ede3_sha", false);' ; then
    echo "V-102889 is not a finding"
else
    echo 'lockPref("security.ssl3.rsa_des_ede3_sha", false);' >> /lib64/firefox/mozilla.cfg
    echo "V-102889 is not a finding"
fi