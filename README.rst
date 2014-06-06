===========================
Maven HTMLCompressor Plugin
===========================

Maven HTMLCompressor Plugin allows to compress HTML/XML files by adding a few lines to the pom file. This plugin uses `htmlcompressor <https://code.google.com/p/htmlcompressor>`_ library.

Usage
"""""

The simplest way to start using this plugin is:

1.Enable plugin in your pom.xml:
::
    <build>
        <plugins>
            <plugin>
                <groupId>com.tunyk.mvn.plugins.htmlcompressor</groupId>
                <artifactId>htmlcompressor-maven-plugin</artifactId>
                <version>1.4-SNAPSHOT</version>
                <configuration>
                    <javascriptHtmlSprite>false</javascriptHtmlSprite>
                    <compressCss>true</compressCss>
                    <compressJavaScript>true</compressJavaScript>
                    <srcFolder>${project.basedir}/src/main/webapp</srcFolder>
                    <targetFolder>${project.build.directory}/${project.artifactId}-${project.version}</targetFolder>
                    <encoding>utf-8</encoding>
                    <predefinedPreservePatterns>
                        <predefinedPreservePattern>SERVER_SCRIPT_TAG_PATTERN</predefinedPreservePattern>
                    </predefinedPreservePatterns>
                    <fileExt>
                        <fileExt>html</fileExt>
                        <fileExt>jsp</fileExt>
                        <fileExt>vm</fileExt>
                    </fileExt>
                </configuration>
            </plugin>
        </plugins>
    </build>

2.Put XML files under ``src/main/resources/xml`` and HTML files under ``src/main/resources/html``

3.For HTML compression, create ``integration.js`` file under ``src/main/resources/html`` with the contents like below. It will integrate HTML templates into JavaScript (%s will be replaced with JSON object and copied to the target folder).
::
    var htmlTemplatesInjector = {
        htmlTemplates: %s
    };

4.Run maven goals:
::
    mvn htmlcompressor:html
    mvn htmlcompressor:xml

5.Check the target/htmlcompressor folder for output.

Source
""""""

The source code is available on GitHub `htmlcompressor-maven-plugin <https://github.com/allex/htmlcompressor-maven-plugin>`_
::
    git clone https://github.com/allex/htmlcompressor-maven-plugin.git

Issues tracking
"""""""""""""""
Issues tracking is available on `GitHub issues <https://github.com/allex/htmlcompressor-maven-plugin/issues>`_

Bug reports, feature requests, and general inquiries welcome.
